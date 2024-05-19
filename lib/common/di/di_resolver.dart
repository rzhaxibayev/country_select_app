import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DiResolver {
  static final _di = GetIt.instance;

  static Future<void> register() async {
    _registerNetworkingClient();
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
    final dio = Dio(options);

    _di.registerLazySingleton<Dio>(() => dio);
  }
}
