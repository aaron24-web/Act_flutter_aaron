import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    await Future.delayed(const Duration(seconds: 2));
    if (email == 'test@javerage.com' && password == '5ecret4') {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure('Credenciales inválidas. Inténtalo de nuevo.'));
    }
  }
}
