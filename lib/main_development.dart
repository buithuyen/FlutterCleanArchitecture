import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';
import 'package:flutter_clean_architecture/bootstrap.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  FlavorConfig(
    variables: {
      'counter': 1,
      'baseURL': 'https://parseapi.back4app.com/classes/',
      'ParseApplicationID': 'slS93XEXLQP3jzHqgNmYqWjIJM6RsglP6dg06ujX',
      'ParseRestAPIKey': '2Y7OJl2Bx80KLdKfEUmTCVQqR4Onbr3hkgF83JVg'
    },
  );
  bootstrap(() => const App());
}
