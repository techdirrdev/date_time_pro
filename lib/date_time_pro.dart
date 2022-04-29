import 'dart:async';

import 'package:flutter/services.dart';

class DateTimePro {
  static const MethodChannel _channel = MethodChannel('date_time_pro');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
