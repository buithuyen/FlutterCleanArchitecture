import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(
  genericArgumentFactories: true,
  explicitToJson: true,
  fieldRename: FieldRename.none,
)
abstract class Response<T> {
  Response({
    this.results,
  });

  final T? results;
}
