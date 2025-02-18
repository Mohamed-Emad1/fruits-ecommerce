part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}
final class SignupSuccess extends SignupState {
  final UserEntity user;
  SignupSuccess(this.user);
}
final class SignupError extends SignupState {
  final String failure;
  SignupError(this.failure);
}
