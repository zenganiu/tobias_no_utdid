import 'tobias_no_utdid_platform_interface.dart';

Future<String?> getPlatformVersion() {
  return TobiasNoUtdidPlatform.instance.getPlatformVersion();
}

Future<Map<dynamic, dynamic>> aliPay(String order, {AliPayEnv evn = AliPayEnv.online}) async {
  final res = await TobiasNoUtdidPlatform.instance.aliPay(order, evn: evn);
  return res ?? {};
}

Future<Map<dynamic, dynamic>> aliPayAuth(String auth) async {
  final res = await TobiasNoUtdidPlatform.instance.aliPayAuth(auth);
  return res ?? {};
}

Future<String> aliPayVersion() async {
  final res = await TobiasNoUtdidPlatform.instance.aliPayVersion();
  return res ?? '';
}

Future<bool> isAliPayInstalled() async {
  final res = await TobiasNoUtdidPlatform.instance.isAliPayInstalled();
  return res ?? false;
}

enum AliPayEnv { online, sandbox }
