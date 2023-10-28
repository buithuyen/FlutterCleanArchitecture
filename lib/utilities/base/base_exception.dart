class BaseException implements Exception {
  final int? code;
  final String? message;
  BaseException({this.code, this.message});
}
