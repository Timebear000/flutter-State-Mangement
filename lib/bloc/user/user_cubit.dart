import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/User.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectionUser(User user) {
    emit(UserActive(user));
  }

  void chageAge(int age) {
    final currentState = state;
    if (currentState is UserActive) {
      final newUser = currentState.user.copyWith(age: 30);
      emit(UserActive(newUser));
    }
  }

  void addProfession() {
    final currentState = state;
    if (currentState is UserActive) {
      final newProfesionse = [
        ...currentState.user.professtion,
        'Profession ${currentState.user.professtion.length + 1}'
      ];
      final newUser = currentState.user.copyWith(professtion: newProfesionse);
      emit(UserActive(newUser));
    }
  }

  void removeUser() {
    emit(UserInitial());
  }
}
