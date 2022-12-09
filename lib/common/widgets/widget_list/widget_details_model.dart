import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_details_model.freezed.dart';

@freezed
class WidgetDetailsModel with _$WidgetDetailsModel {
  const factory WidgetDetailsModel(
    String name,
    String description,
  ) = _WidgetDetailsModel;
}
