import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:providerarch/app/locator.dart';
import 'package:providerarch/app/router.gr.dart';

class StartupViewModel extends BaseViewModel{
 final NavigationService _navigationService = locator<NavigationService>();

 Future navigateToHome() async{
   await _navigationService.navigateTo(Routes.homeView);
 }


  /*private variable title */
  String _title = 'Startup View';
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