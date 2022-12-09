// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WidgetDetailsModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WidgetDetailsModelCopyWith<WidgetDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetDetailsModelCopyWith<$Res> {
  factory $WidgetDetailsModelCopyWith(
          WidgetDetailsModel value, $Res Function(WidgetDetailsModel) then) =
      _$WidgetDetailsModelCopyWithImpl<$Res, WidgetDetailsModel>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$WidgetDetailsModelCopyWithImpl<$Res, $Val extends WidgetDetailsModel>
    implements $WidgetDetailsModelCopyWith<$Res> {
  _$WidgetDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WidgetDetailsModelCopyWith<$Res>
    implements $WidgetDetailsModelCopyWith<$Res> {
  factory _$$_WidgetDetailsModelCopyWith(_$_WidgetDetailsModel value,
          $Res Function(_$_WidgetDetailsModel) then) =
      __$$_WidgetDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$_WidgetDetailsModelCopyWithImpl<$Res>
    extends _$WidgetDetailsModelCopyWithImpl<$Res, _$_WidgetDetailsModel>
    implements _$$_WidgetDetailsModelCopyWith<$Res> {
  __$$_WidgetDetailsModelCopyWithImpl(
      _$_WidgetDetailsModel _value, $Res Function(_$_WidgetDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$_WidgetDetailsModel(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WidgetDetailsModel implements _WidgetDetailsModel {
  const _$_WidgetDetailsModel(this.name, this.description);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'WidgetDetailsModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WidgetDetailsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WidgetDetailsModelCopyWith<_$_WidgetDetailsModel> get copyWith =>
      __$$_WidgetDetailsModelCopyWithImpl<_$_WidgetDetailsModel>(
          this, _$identity);
}

abstract class _WidgetDetailsModel implements WidgetDetailsModel {
  const factory _WidgetDetailsModel(
      final String name, final String description) = _$_WidgetDetailsModel;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WidgetDetailsModelCopyWith<_$_WidgetDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
