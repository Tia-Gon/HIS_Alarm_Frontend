// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChooseItemModel _$$_ChooseItemModelFromJson(Map<String, dynamic> json) =>
    _$_ChooseItemModel(
      selectValue: json['select_value'] as String? ?? '',
      dropdownValue: json['dropdown_value'] as String? ?? '',
      radioValue: json['radio_value'] as String? ?? '',
      multiselectValues: (json['multiselect_values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [''],
    );

Map<String, dynamic> _$$_ChooseItemModelToJson(_$_ChooseItemModel instance) =>
    <String, dynamic>{
      'select_value': instance.selectValue,
      'dropdown_value': instance.dropdownValue,
      'radio_value': instance.radioValue,
      'multiselect_values': instance.multiselectValues,
    };
