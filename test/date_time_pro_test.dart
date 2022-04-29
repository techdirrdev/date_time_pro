import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:date_time_pro/date_time_pro.dart';

void main() {
  const MethodChannel channel = MethodChannel('date_time_pro');

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
    expect(await DateTimePro.platformVersion, '42');
  });
}
