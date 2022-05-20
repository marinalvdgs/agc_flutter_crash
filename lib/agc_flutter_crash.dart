import 'dart:async';

import 'package:flutter/services.dart';

class AgcFlutterCrash {
  static const MethodChannel _channel = MethodChannel('agc_flutter_crash');

  static Future<void> enableCrash(bool enable) async {
    await _channel.invokeMethod('enableCrash', enable);
  }

  static Future<void> testCrash() async {
    await _channel.invokeMethod('testCrash');
  }
}
