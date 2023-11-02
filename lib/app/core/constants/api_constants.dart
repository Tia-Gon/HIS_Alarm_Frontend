class ApiConstant {
  static const baseUrl =
      'https://984jhojk7j.execute-api.ap-northeast-2.amazonaws.com/dev';
  static const postSignin = '/user/login';
  static const getDatas = '/data';
  static const getUser = '/user/{{email}}';
  static const postUser = '/user';
  static const postUserS3PreSignedUrl = '/user/s3-pre-signed-url';
  static const getLocationUrl =
      'https://dapi.kakao.com/v2/local/search/keyword.json';
  static const getLocationUrlAuthorization =
      'KakaoAK 3d7c656828bfdd42d45d62edcafe284e';
}
