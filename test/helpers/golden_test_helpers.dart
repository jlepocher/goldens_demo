import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'golden_test_devices.dart';

/// Run golden test on a single device.
void goldenTestSingleDevice({
  required String testDescription,
  required Widget Function() createSut,
  required String screenshotFileName,
  required Device device,
  Future<void> Function(Key, WidgetTester)? onCreate,
}) {
  final deviceName = device.name.toLowerCase();
  testGoldens("$testDescription - $deviceName", (tester) async {
    // ARRANGE
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [device])
      ..addScenario(
        widget: createSut(),
        onCreate: (key) async {
          await onCreate?.call(key, tester);
        },
      );

    // ACT
    await tester.pumpDeviceBuilder(builder);

    // ASSERT
    await screenMatchesGolden(tester, "${screenshotFileName}_$deviceName");
  });
}

/// Run golden test on a set of predefined devices.
void goldenTestMultipleDevices({
  required String testDescription,
  required String screenshotFileName,
  required Widget Function() createSut,
  Future<void> Function(Key, WidgetTester)? onCreate,
}) {
  for (var device in GoldenTestDevices.devicesForResponsiveTest) {
    goldenTestSingleDevice(
      createSut: createSut,
      testDescription: testDescription,
      screenshotFileName: screenshotFileName,
      device: device,
      onCreate: onCreate,
    );
  }
}
