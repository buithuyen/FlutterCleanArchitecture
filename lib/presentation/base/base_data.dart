import 'package:flutter_clean_architecture/presentation/base/base_state.dart';

abstract class BaseData {
  BaseData(this.state);
  final BaseState state;
}
