import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  @JsonSerializable(
      fieldRename: FieldRename.snake,
      includeIfNull: false,
      explicitToJson: true)
  factory LocationModel({
    // 골뱅이 붙은 것은 annotation
    @Default('') String road_address_name,
    @Default('') String id,
    @Default('') String place_name,
    @Default('') String x,
    @Default('') String y,
  }) = _LocationModel;

  const LocationModel._();
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
