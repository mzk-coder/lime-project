
import 'package:flutter/material.dart';
import 'package:lime_project_app/presentation/journey/main_screen/main_screen.dart';
import 'package:lime_project_app/presentation/journey/truck_reporting/truck_report_screen.dart';

import '../../presentation/journey/login/login.dart';
import 'route_list.dart';

class Routes {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case RouteList.initialRoute:
        return _generateMaterialRoute(page: const LoginScreen());
      case RouteList.login:
        return _generateMaterialRoute(page: const LoginScreen());

      case RouteList.mainScreen:
        return _generateMaterialRoute(page: const MainScreen());

      case RouteList.truckReportingScreen:
        return _generateMaterialRoute(page: const TruckReportScreen());


      default:
        return _generateMaterialRoute(page: const Placeholder());
    }
  }

  static MaterialPageRoute _generateMaterialRoute({required Widget page}) =>
      MaterialPageRoute(
        builder: (_) => page,
      );
}
