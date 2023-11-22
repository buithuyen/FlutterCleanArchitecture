import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';
import 'package:flutter_clean_architecture/bootstrap.dart';
import 'package:flutter_clean_architecture/utilities/helpers/flavor_getter.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

void main() {
  FlavorConfig(
    color: Colors.orange,
    variables: {
      Flavor.baseURLKey: 'https://parseapi.back4app.com/classes/',
      Flavor.parseApplicationIDKey: 'slS93XEXLQP3jzHqgNmYqWjIJM6RsglP6dg06ujX',
      Flavor.parseRestAPIKey: '2Y7OJl2Bx80KLdKfEUmTCVQqR4Onbr3hkgF83JVg'
    },
  );
  bootstrap(() => const App());
}
