import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ForgotPasswordProvider with ChangeNotifier {
  var textController = TextEditingController();
  String myText = "";

  getText(String text) {
    myText = text;
    notifyListeners();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
    notifyListeners();
  }
}
