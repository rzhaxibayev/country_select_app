import 'package:country_select_app/common/device/device_info_provider.dart';
import 'package:country_select_app/common/networking/interceptors/header_interceptor.dart';
import 'package:country_select_app/features/countries/data/repository/countries_repository_impl.dart';
import 'package:country_select_app/features/countries/data/service/countries_service.dart';
import 'package:country_select_app/features/countries/data/service/countries_service_impl.dart';
import 'package:country_select_app/features/countries/domain/repository/countries_repository.dart';
import 'package:country_select_app/features/countries/ui/cubit/countries_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// Dependency Injection registrar
class DiResolver {
  static final _di = GetIt.instance;

  static Future<void> register() async {
    await _registerDeviceInfo();
    _registerNetworkingClient();
    _registerServices();
    _registerRepositories();
    _registerCubits();
  }

  static Future<void> _registerDeviceInfo() async {
    final deviceInfoProvider = DeviceInfoProviderImpl();
    await deviceInfoProvider.init();
    _di.registerLazySingleton<DeviceInfoProvider>(() => deviceInfoProvider);
  }

  /// In this app we use Dio library for networking client.
  ///
  /// TODO(rauan): In the future we need to create a wrapper class over Dio
  /// (e.g. NetworkingClient) so that we do not directly depend on Dio but
  /// will have an abstraction.
  static void _registerNetworkingClient() {
    final options = BaseOptions(
      baseUrl: 'https://api.stagingcupid.com/api/v1',
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      sendTimeout: const Duration(seconds: 60),
    );

    final headerInterceptor = HeaderInterceptor(
      configs: HeaderInterceptorConfigs(
        apiKey: 'sA,{tzUD=]dHvYNBJ4xVZ3c=&zS%.UqVc{But?kc',
        serverAppName: 'com.stagingcupid.api/10.16.6 (Release)',
      ),
      deviceInfoProvider: _di.get<DeviceInfoProvider>(),
    );
    final dio = Dio(options)..interceptors.add(headerInterceptor);

    _di.registerLazySingleton<Dio>(() => dio);
  }

  static void _registerServices() {
    _di.registerLazySingleton<CountriesService>(
        () => CountriesServiceImpl(apiClient: _di.get<Dio>()));
  }

  static void _registerRepositories() {
    _di.registerLazySingleton<CountriesRepository>(
        () => CountriesRepositoryImpl(service: _di.get<CountriesService>()));
  }

  static void _registerCubits() {
    _di.registerFactory<CountriesCubit>(
        () => CountriesCubit(repository: _di.get<CountriesRepository>()));
  }
}
