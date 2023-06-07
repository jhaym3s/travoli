import 'package:flutter/material.dart';

import 'core/app_route/route.dart';
import 'core/configs/app_theme.dart';
import 'core/configs/constants.dart';
import 'core/configs/dimensions.dart';
import 'features/dashboard/dashboard_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kCompanyName,
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.system,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().lightTheme,
      home: //const CustomNavigationBar(),
      const CustomNavigationBar(),
      onGenerateRoute: AppRouter.onGenerated,
      builder: (context, widget){
        final media = MediaQuery.of(context);
        Dims.setSize(media);
        return widget!;
      },
    );
  }
}


