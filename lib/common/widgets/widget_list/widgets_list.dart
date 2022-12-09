import 'package:flutter/material.dart';
import 'package:golden_tests/common/theme/custom_colors.dart';
import 'package:golden_tests/common/theme/custom_dimensions.dart';
import 'package:golden_tests/common/widgets/widget_list/widget_details_model.dart';

class WidgetsList extends StatelessWidget {
  const WidgetsList({
    super.key,
    required this.widgetDetails,
    this.selectedWidgetDetails,
    this.onWidgetTap,
  });

  final List<WidgetDetailsModel> widgetDetails;
  final WidgetDetailsModel? selectedWidgetDetails;
  final Future<void> Function(WidgetDetailsModel)? onWidgetTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: CustomDimensions.lg),
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
      separatorBuilder: (context, itemIndex) => const Divider(),
      itemBuilder: (context, itemIndex) {
        final item = widgetDetails[itemIndex];
        return ListTile(
          key: Key(item.name.toLowerCase()),
          title: Text(
            item.name,
            style: Theme.of(context).textTheme.headline6,
          ),
          selected: selectedWidgetDetails == item,
          selectedTileColor: CustomColors.lightGrey,
          onTap: () => onWidgetTap?.call(item),
        );
      },
      itemCount: widgetDetails.length,
    );
  }
}
