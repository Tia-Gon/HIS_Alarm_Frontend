import 'package:freezed_annotation/freezed_annotation.dart';

part 'choose_item_model.freezed.dart';
part 'choose_item_model.g.dart';

@freezed
class ChooseItemModel with _$ChooseItemModel {
  @JsonSerializable(
      fieldRename: FieldRename.snake,
      includeIfNull: false,
      explicitToJson: true)
  factory ChooseItemModel({
    // 골뱅이 붙은 것은 annotation
    @Default('') String selectValue,
    @Default('') String dropdownValue,
    @Default('') String radioValue,
    @Default(['']) List<String> multiselectValues,
  }) = _ChooseItemModel;

  const ChooseItemModel._();
  factory ChooseItemModel.fromJson(Map<String, dynamic> json) =>
      _$ChooseItemModelFromJson(json);
}
