import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'startup_viewmodel.dart';
import 'package:stacked_services/stacked_services.dart';


class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    //reactive gives you traditional view model
    return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
          body : Center(
              child: Text(model.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.navigateToHome()),
        ),
        viewModelBuilder: () => StartupViewModel(),
    );
  }
}

