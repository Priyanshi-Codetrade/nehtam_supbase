import 'package:flutter/material.dart';
import 'package:nehtam_supabase/app/module/login/view/login.dart';
import 'package:nehtam_supabase/app/module/onboard/view/splash_screen.dart';
import 'package:nehtam_supabase/app/utils/constant/route_constants.dart';

class NavigationManager {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case RoutesConstants.splashScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const SplashScreen(),
        );
      case RoutesConstants.routeLogin:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const LoginScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Under Development"),
          ),
        ),
      );
}
