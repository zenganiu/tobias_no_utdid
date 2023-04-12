import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:tobias_no_utdid/tobias_no_utdid.dart';

import 'tobias_no_utdid_method_channel.dart';

abstract class TobiasNoUtdidPlatform extends PlatformInterface {
  /// Constructs a TobiasNoUtdidPlatform.
  TobiasNoUtdidPlatform() : super(token: _token);

  static final Object _token = Object();

  static TobiasNoUtdidPlatform _instance = MethodChannelTobiasNoUtdid();

  /// The default instance of [TobiasNoUtdidPlatform] to use.
  ///
  /// Defaults to [MethodChannelTobiasNoUtdid].
  static TobiasNoUtdidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TobiasNoUtdidPlatform] when
  /// they register themselves.
  static set instance(TobiasNoUtdidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<Map<dynamic, dynamic>?> aliPay(String order, {AliPayEnv evn = AliPayEnv.online}) async {
    throw UnimplementedError('aliPay() has not been implemented.');
  }

  Future<Map<dynamic, dynamic>?> aliPayAuth(String auth) async {
    throw UnimplementedError('aliPayAuth() has not been implemented.');
  }

  Future<String?> aliPayVersion() async {
    throw UnimplementedError('aliPayVersion() has not been implemented.');
  }

  Future<bool?> isAliPayInstalled() async {
    throw UnimplementedError('isAliPayInstalled() has not been implemented.');
  }
}
