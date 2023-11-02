// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChooseItemModel _$ChooseItemModelFromJson(Map<String, dynamic> json) {
  return _ChooseItemModel.fromJson(json);
}

/// @nodoc
mixin _$ChooseItemModel {
// 골뱅이 붙은 것은 annotation
  String get selectValue => throw _privateConstructorUsedError;
  String get dropdownValue => throw _privateConstructorUsedError;
  String get radioValue => throw _privateConstructorUsedError;
  List<String> get multiselectValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChooseItemModelCopyWith<ChooseItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseItemModelCopyWith<$Res> {
  factory $ChooseItemModelCopyWith(
          ChooseItemModel value, $Res Function(ChooseItemModel) then) =
      _$ChooseItemModelCopyWithImpl<$Res, ChooseItemModel>;
  @useResult
  $Res call(
      {String selectValue,
      String dropdownValue,
      String radioValue,
      List<String> multiselectValues});
}

/// @nodoc
class _$ChooseItemModelCopyWithImpl<$Res, $Val extends ChooseItemModel>
    implements $ChooseItemModelCopyWith<$Res> {
  _$ChooseItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectValue = null,
    Object? dropdownValue = null,
    Object? radioValue = null,
    Object? multiselectValues = null,
  }) {
    return _then(_value.copyWith(
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as String,
      dropdownValue: null == dropdownValue
          ? _value.dropdownValue
          : dropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      radioValue: null == radioValue
          ? _value.radioValue
          : radioValue // ignore: cast_nullable_to_non_nullable
              as String,
      multiselectValues: null == multiselectValues
          ? _value.multiselectValues
          : multiselectValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChooseItemModelCopyWith<$Res>
    implements $ChooseItemModelCopyWith<$Res> {
  factory _$$_ChooseItemModelCopyWith(
          _$_ChooseItemModel value, $Res Function(_$_ChooseItemModel) then) =
      __$$_ChooseItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectValue,
      String dropdownValue,
      String radioValue,
      List<String> multiselectValues});
}

/// @nodoc
class __$$_ChooseItemModelCopyWithImpl<$Res>
    extends _$ChooseItemModelCopyWithImpl<$Res, _$_ChooseItemModel>
    implements _$$_ChooseItemModelCopyWith<$Res> {
  __$$_ChooseItemModelCopyWithImpl(
      _$_ChooseItemModel _value, $Res Function(_$_ChooseItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectValue = null,
    Object? dropdownValue = null,
    Object? radioValue = null,
    Object? multiselectValues = null,
  }) {
    return _then(_$_ChooseItemModel(
      selectValue: null == selectValue
          ? _value.selectValue
          : selectValue // ignore: cast_nullable_to_non_nullable
              as String,
      dropdownValue: null == dropdownValue
          ? _value.dropdownValue
          : dropdownValue // ignore: cast_nullable_to_non_nullable
              as String,
      radioValue: null == radioValue
          ? _value.radioValue
          : radioValue // ignore: cast_nullable_to_non_nullable
              as String,
      multiselectValues: null == multiselectValues
          ? _value._multiselectValues
          : multiselectValues // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class _$_ChooseItemModel extends _ChooseItemModel {
  _$_ChooseItemModel(
      {this.selectValue = '',
      this.dropdownValue = '',
      this.radioValue = '',
      final List<String> multiselectValues = const ['']})
      : _multiselectValues = multiselectValues,
        super._();

  factory _$_ChooseItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChooseItemModelFromJson(json);

// 골뱅이 붙은 것은 annotation
  @override
  @JsonKey()
  final String selectValue;
  @override
  @JsonKey()
  final String dropdownValue;
  @override
  @JsonKey()
  final String radioValue;
  final List<String> _multiselectValues;
  @override
  @JsonKey()
  List<String> get multiselectValues {
    if (_multiselectValues is EqualUnmodifiableListView)
      return _multiselectValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multiselectValues);
  }

  @override
  String toString() {
    return 'ChooseItemModel(selectValue: $selectValue, dropdownValue: $dropdownValue, radioValue: $radioValue, multiselectValues: $multiselectValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseItemModel &&
            (identical(other.selectValue, selectValue) ||
                other.selectValue == selectValue) &&
            (identical(other.dropdownValue, dropdownValue) ||
                other.dropdownValue == dropdownValue) &&
            (identical(other.radioValue, radioValue) ||
                other.radioValue == radioValue) &&
            const DeepCollectionEquality()
                .equals(other._multiselectValues, _multiselectValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, selectValue, dropdownValue,
      radioValue, const DeepCollectionEquality().hash(_multiselectValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChooseItemModelCopyWith<_$_ChooseItemModel> get copyWith =>
      __$$_ChooseItemModelCopyWithImpl<_$_ChooseItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChooseItemModelToJson(
      this,
    );
  }
}

abstract class _ChooseItemModel extends ChooseItemModel {
  factory _ChooseItemModel(
      {final String selectValue,
      final String dropdownValue,
      final String radioValue,
      final List<String> multiselectValues}) = _$_ChooseItemModel;
  _ChooseItemModel._() : super._();

  factory _ChooseItemModel.fromJson(Map<String, dynamic> json) =
      _$_ChooseItemModel.fromJson;

  @override // 골뱅이 붙은 것은 annotation
  String get selectValue;
  @override
  String get dropdownValue;
  @override
  String get radioValue;
  @override
  List<String> get multiselectValues;
  @override
  @JsonKey(ignore: true)
  _$$_ChooseItemModelCopyWith<_$_ChooseItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
