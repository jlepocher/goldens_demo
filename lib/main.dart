import 'package:flutter/material.dart';
import 'package:golden_tests/bootstrap/service_locator.dart';
import 'package:golden_tests/bootstrap/widgets_catalog_app.dart';

void main() {
  ServiceLocator.registerDependencies();

  runApp(const WidgetsCatalogApp());
}
