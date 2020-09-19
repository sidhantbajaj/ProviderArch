import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
 /*private variable title */
  String _title = 'Home View';
// property getter title that will get the private value
  String get title => '$_title $_counter';

  int _counter = 0;
  int get counter => _counter;
  void updateCounter(){
    _counter++;
    //notifylistners will rebuild the ui
    notifyListeners();
  }
}