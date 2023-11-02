import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/api/user/user_api.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/data/models/choose_item_model.dart';
import 'package:simple_webapp/app/core/data/models/user_model.dart';
import 'package:simple_webapp/app/core/providers/services_providers.dart';
import 'package:simple_webapp/app/core/services/app_service.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class ChoiceItemListController extends ChangeNotifier {
  // 생성자에서 getUserList 함수를 호출하여 userList를 초기화한다.
  ChoiceItemListController(this.ref, this.appService) {}

  // provider를 생성한다.
  static final provider = ChangeNotifierProvider.autoDispose(
    (ref) {
      final appService = ref.read(appServiceProvider);
      return ChoiceItemListController(ref, appService);
    },
  );

  final Ref ref;
  final AppService appService;
  String dropdownValue = 'Item #1';
  String selectValue = '';
  List<String> multiSelectValues = [];
  List<String> dropdownMenuItems = [
    'Item #1',
    'Item #2',
    'Item #3',
    'Item #4',
    'Item #5'
  ];
  List<String> radioMenuItems = ['Item #1', 'Item #2', 'Item #3'];
  List<String> multiSelectMenuItems = [
    'Item #1',
    'Item #2',
    'Item #3',
    'Item #4',
    'Item #5',
    'Item #6'
  ];
  String radioValue = '';
  ChooseItemModel newItem = ChooseItemModel();
  void itemcolor(String itemcolor) {
    item = itemcolor;
    notifyListeners();
  }

  void setRadioValue(String value) {
    if (radioValue == value) {
      radioValue = '';
    } else {
      radioValue = value;
    }
    notifyListeners();
    newItem = newItem.copyWith(radioValue: value);
  }

  void setSelectValue() {
    ref.read(AppRouter.provider).pop();
    newItem = newItem.copyWith(selectValue: selectValue);
    notifyListeners();
  }

  void setDropdownValue(value) {
    dropdownValue = value;
    notifyListeners();
    newItem = newItem.copyWith(dropdownValue: value);
  }

  void setMultiSelectValue(String value) {
    if (multiSelectValues.contains(value)) {
      multiSelectValues.remove(value);
    } else {
      multiSelectValues.add(value);
    }
    notifyListeners();
    newItem = newItem.copyWith(multiselectValues: multiSelectValues);
  }

  // 사용자 목록을 담는다
  List<UserModel> userList = [];
  // 현재 선택된 사용자를 담는다
  UserModel selectedUser = UserModel();

  final List<String> items =
      List.generate(10, (index) => 'Item # ${index + 1}');

  String item = '';
}
