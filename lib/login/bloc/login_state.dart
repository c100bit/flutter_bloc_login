part of 'login_bloc.dart';

enum FormStatus {
  initial,
  failure,
  invalid,
  inProgress,
  success,
  valid;

  bool get isValid => this == FormStatus.valid;
  bool get isFailure => this == FormStatus.failure;
  bool get isInProgress => this == FormStatus.inProgress;
}

class LoginState extends Equatable {
  final FormStatus status;
  final Username username;
  final Password password;

  const LoginState({
    this.status = FormStatus.initial,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
  });

  LoginState copyWith({
    FormStatus? status,
    Username? username,
    Password? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, username, password];
}
