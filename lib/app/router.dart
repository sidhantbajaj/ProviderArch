//all global application files that will be used in the application
import 'package:auto_route/auto_route_annotations.dart';
import 'package:providerarch/ui/views/home/home_view.dart';
import 'package:providerarch/ui/views/startup/startup_view.dart';

@MaterialAutoRouter(
    routes: <AutoRoute>[
    MaterialRoute(page: StartupView, initial: true),
MaterialRoute(page: HomeView),
MaterialRoute(page: StartupView),
    ],
)
class $Router{
  //startupview type and property
   }