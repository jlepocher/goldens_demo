import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

abstract class GoldenTestDevices {
  static const Device _iosPhone = Device(
    name: 'small',
    size: Size(414, 896),
  );

  static const Device _androidTablet = Device(
    name: "medium",
    size: Size(800, 1280),
  );

  static const Device _webBrowser = Device(
    name: "large",
    size: Size(1600, 1150),
  );

  /// List of devices for testing responsive layouts
  static const List<Device> devicesForResponsiveTest = [
    _iosPhone,
    _androidTablet,
    _webBrowser,
  ];
}
