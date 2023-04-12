import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:tobias_no_utdid/tobias_no_utdid.dart';

import 'tobias_no_utdid_platform_interface.dart';

/// An implementation of [TobiasNoUtdidPlatform] that uses method channels.
class MethodChannelTobiasNoUtdid extends TobiasNoUtdidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tobias_no_utdid');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<Map> aliPay(String order, {AliPayEnv evn = AliPayEnv.online}) async {
    final res = await methodChannel.invokeMapMethod(
      "pay",
      {"order": order, "payEnv": evn.index},
    );
    return res ?? {};
  }

  @override
  Future<Map<dynamic, dynamic>?> aliPayAuth(String auth) async {
    final res = await methodChannel.invokeMapMethod("auth", auth);
    return res;
  }

  @override
  Future<String?> aliPayVersion() async {
    final res = await methodChannel.invokeMethod<String>('version');
    return res;
  }

  @override
  Future<bool?> isAliPayInstalled() async {
    final res = await methodChannel.invokeMethod<bool?>('isAliPayInstalled');
    return res;
  }
}
