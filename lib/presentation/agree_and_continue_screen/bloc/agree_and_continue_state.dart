part of 'agree_and_continue_bloc.dart';

/// Represents the state of AgreeAndContinue in the application.

// ignore_for_file: must_be_immutable
class AgreeAndContinueState extends Equatable {
  AgreeAndContinueState({this.agreeAndContinueModelObj});

  AgreeAndContinueModel? agreeAndContinueModelObj;

  @override
  List<Object?> get props => [agreeAndContinueModelObj];
  AgreeAndContinueState copyWith(
      {AgreeAndContinueModel? agreeAndContinueModelObj}) {
    return AgreeAndContinueState(
      agreeAndContinueModelObj:
          agreeAndContinueModelObj ?? this.agreeAndContinueModelObj,
    );
  }
}
