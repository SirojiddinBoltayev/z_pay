import 'package:flutter/widgets.dart';

class ViewModel extends ChangeNotifier {
  double indicatorNumber = 0;
  bool downTime = false;
  bool isPhoneCheck = false;

  bool birth = false;
  indicatorIncrement() {
    indicatorNumber++;
    notifyListeners();
  }

  numberCheck() {
    isPhoneCheck = true;

    notifyListeners();
  }

  yearCheck() {
    birth = true;
    notifyListeners();
  }

  circleDownTimeComplete() {
    downTime = true;
    notifyListeners();
  }
}
