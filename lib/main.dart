import 'package:flutter/material.dart';

import 'core/configs/configs.dart';
import 'core/helpers/router/app_route.dart';
import 'feature/authentication/screens/onboarding_screen.dart';
import 'feature/authentication/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travoli',
      theme: AppTheme().lightTheme,
       onGenerateRoute: AppRouter.onGenerated,
      builder: (context, widget){
            final media = MediaQuery.of(context);
            Dims.setSize(media);
            return widget!;
          },
      home: const OnBoardingScreen(),
    );
  }
}

