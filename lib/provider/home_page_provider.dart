import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomePageProvider with ChangeNotifier {
  final PageController controller = PageController(initialPage: 0);
  int currentPage = 0;

   onChanged(int index) {
     currentPage=index;
    notifyListeners();
  }

}