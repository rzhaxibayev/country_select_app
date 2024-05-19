import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/country_state.dart';
import 'package:country_select_app/features/countries/ui/cubit/countries_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  CountriesCubit get cubit => context.read<CountriesCubit>();

  @override
  void initState() {
    cubit.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CountriesCubit>().state;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Country Selector'),
          centerTitle: true,
        ),
        body: state.map(
          loaded: (loaded) => _LoadedContent(
            countries: loaded.countries,
            countryStateCondition: loaded.countryStateCondition,
            onCountrySelected: cubit.onCountrySelected,
          ),
          loading: (_) => const _LoadingContent(),
          failed: (_) => const _FailedContent(),
        ));
  }
}

class _LoadedContent extends StatelessWidget {
  final List<Country> countries;
  final CountryStateCondition? countryStateCondition;
  final void Function(Country?)? onCountrySelected;

  const _LoadedContent({
    required this.countries,
    this.countryStateCondition,
    this.onCountrySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          DropdownMenu(
            width: MediaQuery.sizeOf(context).width - 2 * 24,
            enableSearch: false,
            dropdownMenuEntries: countries
                .map(
                  (country) => DropdownMenuEntry<Country>(
                    label: country.name,
                    value: country,
                  ),
                )
                .toList(),
            onSelected: onCountrySelected,
          ),
          const SizedBox(height: 12),
          if (countryStateCondition != null)
            _CountryStateSelector(
              countryStateCondition: countryStateCondition!,
            ),
        ],
      ),
    );
  }
}

class _LoadingContent extends StatelessWidget {
  const _LoadingContent();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _FailedContent extends StatelessWidget {
  const _FailedContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text('Failed to load countries'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: context.read<CountriesCubit>().reload,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

class _CountryStateSelector extends StatelessWidget {
  final CountryStateCondition countryStateCondition;

  const _CountryStateSelector({
    required this.countryStateCondition,
  });
  @override
  Widget build(BuildContext context) {
    return countryStateCondition.map(
      loading: (_) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: CircularProgressIndicator(),
      ),
      failed: (_) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Text(
          'Failed to load states for this country. Try again.',
        ),
      ),
      loaded: (loadedCondition) {
        final countryStates = loadedCondition.countryStates;

        return countryStates.isNotEmpty
            ? DropdownMenu(
                width: MediaQuery.sizeOf(context).width - 2 * 24,
                enableSearch: false,
                dropdownMenuEntries: countryStates
                    .map(
                      (countryState) => DropdownMenuEntry<CountryState>(
                        label: countryState.name,
                        value: countryState,
                      ),
                    )
                    .toList(),
              )
            : const Text('No states found');
      },
    );
  }
}
