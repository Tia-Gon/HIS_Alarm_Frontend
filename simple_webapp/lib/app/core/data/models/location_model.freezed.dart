// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
// 골뱅이 붙은 것은 annotation
  String get road_address_name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get place_name => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String road_address_name,
      String id,
      String place_name,
      String x,
      String y});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? road_address_name = null,
    Object? id = null,
    Object? place_name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      road_address_name: null == road_address_name
          ? _value.road_address_name
          : road_address_name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      place_name: null == place_name
          ? _value.place_name
          : place_name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String road_address_name,
      String id,
      String place_name,
      String x,
      String y});
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$_LocationModel>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? road_address_name = null,
    Object? id = null,
    Object? place_name = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_LocationModel(
      road_address_name: null == road_address_name
          ? _value.road_address_name
          : road_address_name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      place_name: null == place_name
          ? _value.place_name
          : place_name // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, includeIfNull: false, explicitToJson: true)
class _$_LocationModel extends _LocationModel {
  _$_LocationModel(
      {this.road_address_name = '',
      this.id = '',
      this.place_name = '',
      this.x = '',
      this.y = ''})
      : super._();

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

// 골뱅이 붙은 것은 annotation
  @override
  @JsonKey()
  final String road_address_name;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String place_name;
  @override
  @JsonKey()
  final String x;
  @override
  @JsonKey()
  final String y;

  @override
  String toString() {
    return 'LocationModel(road_address_name: $road_address_name, id: $id, place_name: $place_name, x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            (identical(other.road_address_name, road_address_name) ||
                other.road_address_name == road_address_name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.place_name, place_name) ||
                other.place_name == place_name) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, road_address_name, id, place_name, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(
      this,
    );
  }
}

abstract class _LocationModel extends LocationModel {
  factory _LocationModel(
      {final String road_address_name,
      final String id,
      final String place_name,
      final String x,
      final String y}) = _$_LocationModel;
  _LocationModel._() : super._();

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override // 골뱅이 붙은 것은 annotation
  String get road_address_name;
  @override
  String get id;
  @override
  String get place_name;
  @override
  String get x;
  @override
  String get y;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
