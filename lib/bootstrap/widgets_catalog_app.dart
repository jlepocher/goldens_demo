import 'package:flutter/material.dart';
import 'package:golden_tests/common/theme/theme_factory.dart';
import 'package:golden_tests/features/home/home_page.dart';
import 'package:golden_tests/features/widget_details/widget_details_page.dart';

class WidgetsCatalogApp extends StatelessWidget {
  const WidgetsCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Catalog',
      theme: ThemeFactory.light,
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => const HomePage(),
        WidgetDetailsPage.routeName: (_) => const WidgetDetailsPage(),
      },
    );
  }
}
