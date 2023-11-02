import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/api/user/user_api.dart';
import 'package:simple_webapp/app/core/constants/app_route_constants.dart';
import 'package:simple_webapp/app/core/data/models/user_model.dart';
import 'package:simple_webapp/app/core/providers/services_providers.dart';
import 'package:simple_webapp/app/core/services/app_service.dart';
import 'package:simple_webapp/app/routes/app_router.dart';

class PisDataController extends ChangeNotifier {
  // 생성자에서 getUserList 함수를 호출하여 userList를 초기화한다.
  PisDataController(this.ref, this._userApi, this.appService) {
    ;
  }

  // provider를 생성한다.
  static final provider = ChangeNotifierProvider(
    (ref) {
      final userApi = ref.watch(UserApi.provider);
      final appService = ref.read(appServiceProvider);
      return PisDataController(ref, userApi, appService);
    },
  );

  final Ref ref;
  final UserApi _userApi;
  final AppService appService;

  // FlSpot 리스트 멤버 변수 선언
  List<FlSpot> _flSpots = [];

  // FlSpot 리스트의 getter 메서드
  List<FlSpot> get flSpots => _flSpots;

  Future<void> getDataList() async {
    var dataList = await _userApi.getDatas();
    print(dataList.toString());

    // FlSpot 리스트 생성
    _flSpots = dataList.map<FlSpot>((e) {
      var timestamp = e.timestamp.toDouble();
      var value = e.value.toDouble();
      return FlSpot(timestamp, value);
    }).toList();

    notifyListeners();
  }

  // Future<void> getDataList() async {
  //   var dataList = await _userApi.getDatas();
  //   print(dataList.toString());
  //   // FlSpot 리스트 생성
  //   List<FlSpot> flSpots = dataList.map<FlSpot>((e) {
  //     // e.timestamp.toDouble()와 e.value.toDouble()는 호출만 되고 반환값을 사용하지 않는다면 변환 결과를 다시 e에 할당해주어야 합니다.
  //     var timestamp = e.timestamp.toDouble();
  //     var value = e.value.toDouble();
  //     return FlSpot(timestamp, value);
  //   }).toList();
  //   print(dataList);

  //   notifyListeners();
  // }
}
