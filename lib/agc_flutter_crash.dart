import 'dart:async';

import 'package:flutter/services.dart';

class AgcFlutterCrash {
  static const MethodChannel _channel = MethodChannel('agc_flutter_crash');

  Future<void> enableCrash(bool enable) async {
    await _channel.invokeMethod('enableCrash', {'enable': enable});
  }

  Future<void> testCrash() async {
    await _channel.invokeMethod('testCrash');
  }
}
