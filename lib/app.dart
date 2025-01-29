import 'package:ecommerce_application/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce_application/utils/theme/TAppTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: ONBoardingScreen(),
    );
  }
}
