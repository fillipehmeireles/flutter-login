import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user/lib.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const LoginState()) {
    on<LoginNameChanged>(_onLoginNameChanged);
    on<LoginAgeChanged>(_onLoginAgeChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  final UserRepository _userRepository;

  void _onLoginNameChanged(LoginNameChanged event, Emitter<LoginState> emit) =>
      emit(state.copyWith(name: event.name));

  void _onLoginAgeChanged(LoginAgeChanged event, Emitter<LoginState> emit) =>
      emit(state.copyWith(age: event.age));

  void _onLoginSubmitted(LoginSubmitted event, Emitter<LoginState> emit) {
    /*User? user = _userRepository.getUser();
    if (user == null) {
      emit(state.copyWith(status: false));
      return;
    }
    print(user); */
    //emit(state.copyWith(status: true));
    emit(state.copyWith(submitLoading: event.submitLoading));
    print(state);
  }
}
