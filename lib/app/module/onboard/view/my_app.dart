import 'package:flutter/material.dart';
import 'package:nehtam_supabase/app/utils/constant/color_constants.dart';

import '../../../utils/constant/route_constants.dart';
import '../../../utils/manager/navigation_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: ColorConstants.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: RoutesConstants.splashScreen,
      navigatorKey: NavigationManager.navigatorKey,
      onGenerateRoute: NavigationManager.onGenerateRoute,
    );
  }
}
