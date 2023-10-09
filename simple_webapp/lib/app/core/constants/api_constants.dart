class ApiConstant {
  static const baseUrl = 'https://api-template-flask.52g.studio';
  static const postSignin = '/user/signin';
  static const getUsers = '/user';
  static const getUser = '/user/{{email}}';
  static const postUser = '/user';
  static const postUserS3PreSignedUrl = '/user/s3-pre-signed-url';
  static const getLocationUrl =
      'https://dapi.kakao.com/v2/local/search/keyword.json';
  static const getLocationUrlAuthorization =
      'KakaoAK 3d7c656828bfdd42d45d62edcafe284e';
}
