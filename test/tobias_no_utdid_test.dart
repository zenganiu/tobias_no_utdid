import 'package:flutter_test/flutter_test.dart';
import 'package:tobias_no_utdid/tobias_no_utdid.dart';
import 'package:tobias_no_utdid/tobias_no_utdid_platform_interface.dart';
import 'package:tobias_no_utdid/tobias_no_utdid_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockTobiasNoUtdidPlatform
//     with MockPlatformInterfaceMixin
//     implements TobiasNoUtdidPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

void main() {
  final TobiasNoUtdidPlatform initialPlatform = TobiasNoUtdidPlatform.instance;

  test('$MethodChannelTobiasNoUtdid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTobiasNoUtdid>());
  });

  test('getPlatformVersion', () async {
    // TobiasNoUtdid tobiasNoUtdidPlugin = TobiasNoUtdid();
    // MockTobiasNoUtdidPlatform fakePlatform = MockTobiasNoUtdidPlatform();
    // TobiasNoUtdidPlatform.instance = fakePlatform;
    //
    // expect(await tobiasNoUtdidPlugin.getPlatformVersion(), '42');
  });
}
