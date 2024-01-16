import 'package:flutter/widgets.dart';

class SumProvider extends ChangeNotifier {
  String text1 = '';
  String text2 = '';
  String get sum => '$text1 $text2';

  void click1(String newText) {
    text1 = newText;
    notifyListeners();
  }

  void click2(String newText) {
    text2 = newText;
    notifyListeners();
  }
}
