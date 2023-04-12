import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tobias_no_utdid/tobias_no_utdid_method_channel.dart';

void main() {
  MethodChannelTobiasNoUtdid platform = MethodChannelTobiasNoUtdid();
  const MethodChannel channel = MethodChannel('tobias_no_utdid');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
