import 'package:bloc/bloc.dart';
import 'package:fruitshup/features/auth/domain/entities/user_entity.dart';
import 'package:fruitshup/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String fullName}) async {
    emit(SignupLoading());

    final user = await authRepo.createUserWithEmailAndPassword(
        email, password, fullName);

    user.fold(
      (failure) => emit(SignupError(failure.message)),
      (user) => emit(SignupSuccess(user)),
    );
  }
}
