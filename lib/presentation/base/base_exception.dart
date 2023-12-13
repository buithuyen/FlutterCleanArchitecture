class BaseException implements Exception {
  BaseException({this.code, this.message});
  final int? code;
  final String? message;
}
