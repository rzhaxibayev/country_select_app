import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';

abstract class DeviceInfoProvider {
  Future<void> init();

  String get osInfo;
}

class DeviceInfoProviderImpl implements DeviceInfoProvider {
  final _deviceInfo = DeviceInfoPlugin();
  String _osName = '';
  String _osVersion = '';

  @override
  Future<void> init() async {
    if (Platform.isIOS) {
      final iosInfo = await _deviceInfo.iosInfo;
      _osName = iosInfo.systemName;
      _osVersion = iosInfo.systemVersion;
    } else if (Platform.isAndroid) {
      final androidInfo = await _deviceInfo.androidInfo;
      _osName = 'Android';
      _osVersion = androidInfo.version.sdkInt.toString();
    }
  }

  @override
  String get osInfo => '$_osName/$_osVersion';
}
