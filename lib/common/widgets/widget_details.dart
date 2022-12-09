import 'package:flutter/material.dart';
import 'package:golden_tests/common/theme/custom_dimensions.dart';
import 'package:golden_tests/common/widgets/widget_list/widget_details_model.dart';

class WidgetDetails extends StatelessWidget {
  const WidgetDetails({
    super.key,
    required this.model,
    this.showName = false,
  });

  final WidgetDetailsModel model;
  final bool showName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(CustomDimensions.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (showName) ...[
              Text(
                model.name,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: CustomDimensions.lg),
            ],
            Text(
              model.description,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
