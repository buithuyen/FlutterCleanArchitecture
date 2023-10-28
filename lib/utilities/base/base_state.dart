import 'package:flutter_clean_architecture/utilities/base/base_exception.dart';

abstract class BaseState {}

class InitialState extends BaseState {}

class SuccessState extends BaseState {}

class ValueChangedState extends BaseState {}

class HUDLoadingState extends BaseState {
  final String? message;
  final String? highlightContent;
  HUDLoadingState({this.message, this.highlightContent});
}

class LoadingState extends BaseState {
  final int id;
  LoadingState({this.id = 0});
}

class ErrorState extends BaseState {
  final BaseException error;

  ErrorState({required this.error});
}

class AlertState extends BaseState {
  final String? message;
  AlertState({this.message});
}
