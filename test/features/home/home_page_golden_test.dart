import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_tests/bootstrap/service_locator.dart';
import 'package:golden_tests/bootstrap/widgets_catalog_app.dart';

import '../../helpers/golden_test_helpers.dart';

void main() {
  group('WidgetsCatalogApp Golden Tests -', () {
    setUpAll(() async {
      ServiceLocator.registerDependencies();
    });

    group('When the app is loaded', () {
      goldenTestMultipleDevices(
        testDescription: 'the HomePage is shown',
        screenshotFileName: 'app_loaded_home_page_shown',
        createSut: () => const WidgetsCatalogApp(),
        onCreate: (_, tester) async {
          await tester.pumpAndSettle();
        },
      );

      group('and the Scaffold widget is clicked in the list', () {
        goldenTestMultipleDevices(
          testDescription: 'then the details for Scaffold are shown',
          screenshotFileName: 'app_loaded_scaffold_clicked_details_shown',
          createSut: () => const WidgetsCatalogApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            await tester.tap(find.byKey(const Key("scaffold")));
            await tester.pumpAndSettle();
          },
        );
      });
    });
  });
}
