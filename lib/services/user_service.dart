import 'dart:async';

import '../models/User.dart';

class _UserService {
  User _user;

  StreamController<User> _userController =
      new StreamController<User>.broadcast();

  User get user => this._user;
  bool get existeUser => (this._user != null) ? true : false;

  Stream<User> get userStream => _userController.stream;

  void loadUser(User user) {
    this._user = user;
    this._userController.add(user);
  }

  void chageAge(int age) {
    this._user.age = age;
    this._userController.add(this._user);
  }

  dispose() {
    this._userController.close();
  }
}

final userService = new _UserService();
