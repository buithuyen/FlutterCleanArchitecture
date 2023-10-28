import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_clean_architecture/utilities/injection/injection_container.config.dart';
import 'package:flutter_clean_architecture/utilities/injection/network_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';


final di = GetIt.asNewInstance();

@InjectableInit()
Future<void> init(GetIt di) async {
  const baseUrl = '';
  final packageInfo = await PackageInfo.fromPlatform();

  final options = dio.BaseOptions(
      connectTimeout: const Duration(milliseconds: 90000), //90s
      receiveTimeout: const Duration(milliseconds: 90000), //90s
      headers: {
        'platform': Platform.operatingSystem,
        'platformVersion': Platform.operatingSystemVersion.substring(0, 9),
        'appVersion': packageInfo.version,
      },
      contentType: dio.Headers.jsonContentType);

  final dtoDio = dio.Dio(options);
  dtoDio.interceptors.add(NetworkInterceptor());

  await di.reset();
  di.init();
}
