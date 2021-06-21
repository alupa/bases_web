import 'package:bases_web/locator.dart';
import 'package:bases_web/router/route_generator.dart';
// import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
// import 'package:bases_web/ui/pages/counter_page.dart';
// import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:flutter/material.dart';

import 'services/navigation_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/stateful',
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage(),
      // },
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) => MainLayoutPage(child: child ?? Container()),
    );
  }
}
