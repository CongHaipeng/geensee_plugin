import 'dart:async';

import 'package:flutter/services.dart';

class GeensePlugin {
  static const MethodChannel _channel = MethodChannel('geense_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get gennsee async {
    final String? res = await _channel.invokeMethod('gennsee');
    return res;
  }

/**
 * 查看直播调用的方法，需传入map 直播参数
 */
  static Future<String?> seelive(Map message) async {
    final String? res = await _channel
        .invokeMethod('seelive', <String, dynamic>{"message": message});
    return res;
  }

/**
 * iOS 原生传递给flutter 方法，退出直播页面调用
 */
  static Future<String?> callNativeMethond(flutterPara) async {
    final String? res =
        await _channel.invokeMethod('callNativeMethond', flutterPara);
    return res;
  }
}
