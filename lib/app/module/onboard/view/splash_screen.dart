import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nehtam_supabase/app/utils/constant/app_constants.dart';
import 'package:nehtam_supabase/app/utils/constant/route_constants.dart';
import 'package:nehtam_supabase/app/utils/extensions/navigation_extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initMethod();
    super.initState();
  }

  Future<void> initMethod() async {
    Timer(const Duration(seconds: 2),
        () => context.pushNamedAndRemoveUntil(RoutesConstants.routeLogin));
  }

  @override
  Scaffold build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          width: 140,
          height: 140,
          image: AssetImage(AppConstants.appLogo),
        ),
      ),
    );
  }
}
