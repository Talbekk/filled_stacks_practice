import 'package:flutter/material.dart';
import 'package:my_app/app/locator.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/router.gr.dart' as router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: router.Routes.startupViewRoute,
      onGenerateRoute: router.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
