import 'package:flutter_clean_architecture/utilities/base/base_exception.dart';

abstract class BaseState {}

class InitialState extends BaseState {}

class SuccessState extends BaseState {}

class ValueChangedState extends BaseState {}

class HUDLoadingState extends BaseState {
  HUDLoadingState({this.message, this.highlightContent});
  final String? message;
  final String? highlightContent;
}

class LoadingState extends BaseState {
  LoadingState({this.id = 0});
  final int id;
}

class ErrorState extends BaseState {
  ErrorState({required this.error});
  final BaseException error;
}

class AlertState extends BaseState {
  AlertState({this.message});
  final String? message;
}
