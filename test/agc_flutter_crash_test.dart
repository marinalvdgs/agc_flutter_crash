import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:agc_flutter_crash/agc_flutter_crash.dart';

void main() {
  const MethodChannel channel = MethodChannel('agc_flutter_crash');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AgcFlutterCrash.platformVersion, '42');
  });
}
