import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_webapp/app/core/constants/api_constants.dart';
import 'package:simple_webapp/app/core/constants/common_constants.dart';
import 'package:simple_webapp/app/core/data/models/data_model.dart';
import 'package:simple_webapp/app/core/data/models/location_model.dart';
import 'package:simple_webapp/app/core/data/models/user_model.dart';
import 'package:simple_webapp/app/core/providers/services_providers.dart';
import 'package:simple_webapp/app/core/services/app_service.dart';
import 'package:simple_webapp/app/core/services/dio_service.dart';

class UserApi {
  UserApi(this.ref, this._appService, this._dioService);

  final Ref ref;
  final AppService _appService;
  final DioService _dioService;

  // provider 선언
  static final provider = Provider<UserApi>(
    (ref) {
      final appService = ref.watch(appServiceProvider);
      final dioService = ref.watch(dioServiceProvider);
      return UserApi(ref, appService, dioService);
    },
  );

  // 로그인 API
  Future<UserModel> postSignin({
    required String email,
    String? password,
    String? googleOauth2Token,
  }) async {
    final response = await _dioService.dio.post(
      ApiConstant.postSignin,
      data: {
        'email': email,
        'password': password ?? '',
      },
    );
    print(response.data);

    await setStorageUserInfo(response.data['access_token'].toString(), email);
    _dioService.setAccessToken();
    return UserModel.fromJson(response.data['user']);
  }

  // 회원가입 API
  Future<UserModel> postUser({required UserModel user}) async {
    final response = await _dioService.dio.post(
      ApiConstant.postUser,
      data: user.toJson(),
    );

    await setStorageUserInfo(
        response.data['access_token'].toString(), user.email);
    _dioService.setAccessToken();
    return UserModel.fromJson(response.data['user']);
  }

  // local storage 에 로그인 정보 저장
  Future<void> setStorageUserInfo(String token, String userId) async {
    await _appService.secureStorageService.write(
      key: CommonConstants.jwtTokenKey,
      value: token,
    );
    await _appService.secureStorageService.write(
      key: CommonConstants.loginedUserId,
      value: userId,
    );
  }

  // 데이터 목록
  Future<List<DataModel>> getDatas() async {
    final response = await _dioService.dio.post(
      ApiConstant.getDatas,
      data: {
        "st": "2023-09-10 00:40",
        "et": "2023-09-10 23:45",
        "tag": "A.DH2.COM-TIT-2642/PLOT"
      },
    );
    return (response.data['dataList'] as List)
        .map((e) => DataModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // 회원
  Future<UserModel> getUser({required String email}) async {
    final response = await _dioService.dio.get(
      ApiConstant.getUser.replaceAll('{{email}}', email),
    );
    return UserModel.fromJson(response.data);
  }

  // AWS S3 업로드를 위한 preSignedUrl 얻기
  Future<String> postUserS3PreSignedUrl({
    required String filename,
    required String method,
  }) async {
    final response = await _dioService.dio.post(
      ApiConstant.postUserS3PreSignedUrl,
      data: {
        'file_name': filename,
        'http_method': method,
      },
      options: Options(),
    );
    return response.data['data']['pre_signed_url'] as String;
  }

  // preSignedUrl로 S3에 업로드
  Future<String> uplaodS3PresignedUrl({
    required String url,
    required String fileName,
    required Uint8List file,
  }) async {
    final dio = Dio();
    var retUrl = '';

    await dio
        .put(
          url,
          data: Stream.fromIterable(file.toList().map((e) => [e])),
          options: Options(contentType: fileName.split('.').last),
        )
        .whenComplete(() => retUrl = CommonConstants.s3ImageUrl + fileName);

    return retUrl;
  }

  Future<List<LocationModel>> getLocations({String? search}) async {
    final response = await _dioService.dio.get(ApiConstant.getLocationUrl,
        queryParameters: {'query': search},
        options: Options(headers: {
          'Authorization': ApiConstant.getLocationUrlAuthorization
        }));
    return (response.data['documents'] as List)
        .map((document) =>
            LocationModel.fromJson(document as Map<String, dynamic>))
        .toList();
  }
}
