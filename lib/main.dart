import 'package:country_select_app/common/di/di_resolver.dart';
import 'package:country_select_app/features/countries/ui/countries_screen.dart';
import 'package:country_select_app/features/countries/ui/cubit/countries_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DiResolver.register();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final _di = GetIt.instance;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country selector app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => _di.get<CountriesCubit>(),
        child: const CountriesScreen(),
      ),
    );
  }
}
