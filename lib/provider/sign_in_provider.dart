import 'package:flutter/foundation.dart';

class SignInProvider with ChangeNotifier{
  bool obscure = true;

  void showPass() {
    obscure = !obscure;
    notifyListeners();
  }
}