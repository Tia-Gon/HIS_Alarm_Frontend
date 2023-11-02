import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  @JsonSerializable(
      fieldRename: FieldRename.snake,
      includeIfNull: false,
      explicitToJson: true)
  factory DataModel({
    @Default(0) int timestamp,
    @Default(0.0) double value,
  }) = _DataModel;

  const DataModel._();
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
