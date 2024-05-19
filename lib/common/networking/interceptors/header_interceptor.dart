import 'package:country_select_app/common/device/device_info_provider.dart';
import 'package:dio/dio.dart';

class _Constants {
  static const apiKey = 'X-API-Key';
  static const userAgent = 'User-Agent';
}

class HeaderInterceptorConfigs {
  final String apiKey;
  final String serverAppName;

  HeaderInterceptorConfigs({
    required this.apiKey,
    required this.serverAppName,
  });
}

class HeaderInterceptor extends Interceptor {
  final HeaderInterceptorConfigs _configs;
  final DeviceInfoProvider _deviceInfoProvider;

  HeaderInterceptor({
    required HeaderInterceptorConfigs configs,
    required DeviceInfoProvider deviceInfoProvider,
  })  : _configs = configs,
        _deviceInfoProvider = deviceInfoProvider;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[_Constants.apiKey] = _configs.apiKey;
    options.headers[_Constants.userAgent] =
        '${_configs.serverAppName} ${_deviceInfoProvider.osInfo}';

    super.onRequest(options, handler);
  }
}
