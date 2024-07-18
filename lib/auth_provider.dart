import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void login(String username, String password) {
    // Tambahkan logika otentikasi di sini
    _isAuthenticated = true;
    notifyListeners();
  }

  void register(String username, String password) {
    // Tambahkan logika pendaftaran di sini
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}
