import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:providerarch/app/locator.config.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator(){
  locator.registerLazySingleton(() => $initGetIt(Locator));
}