import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/utilities/base/base_data.dart';

abstract class BaseCubit<D extends BaseData> extends Cubit<D> {
  BaseCubit(super.initialData);

  void dispose();
}
