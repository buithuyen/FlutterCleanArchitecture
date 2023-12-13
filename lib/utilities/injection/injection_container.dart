import 'dart:io';

import 'package:dio/dio.dart' as dio;
import 'package:flutter_clean_architecture/platform/networking/provider/parse_provider.dart';
import 'package:flutter_clean_architecture/utilities/helpers/flavor_getter.dart';
import 'package:flutter_clean_architecture/utilities/helpers/network_interceptor.dart';
import 'package:flutter_clean_architecture/utilities/injection/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

final di = GetIt.asNewInstance();

@InjectableInit()
Future<void> init(GetIt di) async {
  final baseUrl = Flavor.baseURL;
  final packageInfo = await PackageInfo.fromPlatform();

  final options = dio.BaseOptions(
    connectTimeout: const Duration(milliseconds: 90000), //90s
    receiveTimeout: const Duration(milliseconds: 90000), //90s
    headers: {
      'platform': Platform.operatingSystem,
      'platformVersion': Platform.operatingSystemVersion.substring(0, 9),
      'appVersion': packageInfo.version,
      'X-Parse-Application-Id': Flavor.parseApplicationID,
      'X-Parse-REST-API-Key': Flavor.parseRestAPI,
      'Content-Type': 'application/json',
    },
    contentType: dio.Headers.jsonContentType,
  );

  final parseDio = dio.Dio(options);
  parseDio.interceptors.add(NetworkInterceptor());

  await di.reset();

  di
    ..registerLazySingleton(() => ParseProvider(parseDio, baseUrl: baseUrl))
    ..init();
}
