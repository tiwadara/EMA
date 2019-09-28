import 'package:flutter/material.dart';

class UserViewModel with ChangeNotifier {

  bool _isLoggedIn = false;

  get isLoggedIn => _isLoggedIn;

  getUser() => _isLoggedIn;

  setUser(bool isLoggedIn) => _isLoggedIn = isLoggedIn;

  void saveUserData() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void clearUserData() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
