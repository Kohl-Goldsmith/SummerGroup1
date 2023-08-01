// ignore_for_file: must_be_immutable

part of 'signin_bloc.dart';

/// Represents the state of Signin in the application.
class SigninState extends Equatable {
  SigninState({this.signinModelObj});

  SigninModel? signinModelObj;

  @override
  List<Object?> get props => [
        signinModelObj,
      ];
  SigninState copyWith({SigninModel? signinModelObj}) {
    return SigninState(
      signinModelObj: signinModelObj ?? this.signinModelObj,
    );
  }
}
