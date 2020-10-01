import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/bloc/utility.dart';
import 'package:getx_demo/pages/home.dart';
import 'package:getx_demo/pages/profile.dart';

import 'bloc/initial_bindings.dart';

void main() async {
  await Get.putAsync(() => Utility().init());
  runApp(GetMaterialApp(
    initialRoute: '/',
    // onGenerateRoute: _onGenerateRoute,
    // themeMode: ThemeMode.dark,
    // initialBinding: InitialBinding(),
    theme: ThemeData.dark().copyWith(),
    getPages: _getPages(),
    // showPerformanceOverlay: true,
  ));
}

List<GetPage> _getPages() {
  return <GetPage>[
    GetPage(
      name: '/',
      page: () => Home(),
      // binding: InitialBinding(),
    ),
    GetPage(
      name: '/profile',
      page: () => Profile(),
    ),
  ];
}

Route _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return GetPageRoute(
        page: () => Home(),
      );
    case '/profile':
      return GetPageRoute(
        routeName: settings.name,
        parameter: settings.arguments,
        page: () => Profile(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) =>
            Scaffold(body: Center(child: Text('Page not found'))),
      );
  }
}
