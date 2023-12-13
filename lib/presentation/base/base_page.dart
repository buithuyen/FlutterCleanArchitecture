import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/base/base_cubit.dart';
import 'package:flutter_clean_architecture/presentation/base/base_data.dart';
import 'package:flutter_clean_architecture/utilities/injection/injection_container.dart';

abstract class BasePageState<W extends StatefulWidget, C extends BaseCubit<D>,
        D extends BaseData> extends State<W>
    with WidgetsBindingObserver {
  C cubit = di();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onViewCreated();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<C, D>(
      bloc: cubit,
      listener: onDataChange,
      child: BlocBuilder<C, D>(
        bloc: cubit,
        builder: buildPage,
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint("${objectRuntimeType(this, "")} $state");
  }

  @override
  void dispose() {
    debugPrint("${objectRuntimeType(this, "")} dispose");
    cubit.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void onViewCreated() {
    debugPrint("${objectRuntimeType(this, "")} onViewCreated");
  }

  Widget buildPage(BuildContext context, D data);

  void onDataChange(BuildContext context, D data) {}
}
