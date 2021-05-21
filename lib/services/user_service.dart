import 'package:flutter/material.dart';

import '../models/User.dart';

class UserService with ChangeNotifier {
  User _user;

  User get user => this._user;
  bool get existUser => (this._user != null) ? true : false;

  set user(User user) {
    this._user = user;
    notifyListeners();
  }

  void changeAge(int age) {
    this._user.age = age;
    notifyListeners();
  }

  void removeUser() {
    this._user = null;
    notifyListeners();
  }

  void addPerfesion() {
    this
        ._user
        .professtion
        .add('Profesion ${this._user.professtion.length + 1}');

    notifyListeners();
  }
}
