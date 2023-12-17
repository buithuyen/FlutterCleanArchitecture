import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/presentation/base/base_exception.dart';
import 'package:injectable/injectable.dart';

class NetworkErrorCode {
  static const int unknown = 0;
  static const int disconection = -1;
  static const int connectTimeout = -2;
  static const int requestCancelled = -3;
  static const int parseError = -4;
  static const int dataNotFound = -5;
  static const int notConnected = -6;
}

@injectable
class NetworkExceptionHandler {
  NetworkExceptionHandler();

  BaseException parse(dynamic err) {
    if (err is DioException) {
      return _dioErrorParser(err);
    } else if (err is BaseException) {
      return err;
    } else {
      return BaseException(
        code: NetworkErrorCode.unknown,
        message: 'Something went wrong!',
      );
    }
  }

  BaseException _dioErrorParser(DioException err) {
    if (err.type == DioExceptionType.connectionTimeout ||
        err.type == DioExceptionType.sendTimeout ||
        err.type == DioExceptionType.receiveTimeout) {
      return BaseException(
        code: NetworkErrorCode.connectTimeout,
        message: 'Connection time out',
      );
    } else if (err.type == DioExceptionType.badResponse) {
      final errorMessage = err.response?.statusMessage;
      return BaseException(
          code: err.response?.statusCode ?? NetworkErrorCode.unknown,
          message: errorMessage);
    } else if (err.response?.data != null) {
      return BaseException(
        code: NetworkErrorCode.parseError,
        message: 'Parse error',
      );
    }

    return BaseException(code: NetworkErrorCode.unknown);
  }
}
