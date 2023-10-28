import 'package:flutter_clean_architecture/utilities/base/base_state.dart';

abstract class BaseData {
  final BaseState state;

  BaseData(this.state);
}
