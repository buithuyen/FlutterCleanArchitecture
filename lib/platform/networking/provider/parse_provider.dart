import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'parse_provider.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed from injector')
abstract class ParseProvider {
  factory ParseProvider(Dio dio, {String baseUrl}) = _ParseProvider;
}
