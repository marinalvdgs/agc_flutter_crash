
import 'dart:async';

import 'package:flutter/services.dart';

class AgcFlutterCrash {
  static const MethodChannel _channel = MethodChannel('agc_flutter_crash');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
