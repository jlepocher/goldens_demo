import 'package:flutter/material.dart';
import 'package:golden_tests/common/widgets/widget_details.dart';
import 'package:golden_tests/common/widgets/widget_list/widget_details_model.dart';

class WidgetDetailsPage extends StatelessWidget {
  const WidgetDetailsPage({Key? key}) : super(key: key);

  static String get routeName => "/widget_details";

  @override
  Widget build(BuildContext context) {
    final widgetDetails = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(widgetDetails.name),
      ),
      body: WidgetDetails(model: widgetDetails),
    );
  }
}
