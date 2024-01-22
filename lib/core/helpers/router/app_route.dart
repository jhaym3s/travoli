import 'package:flutter/material.dart';
import 'package:travoli/feature/authentication/screens/number_verification.dart';
import 'package:travoli/feature/authentication/screens/onboarding_screen.dart';
import 'package:travoli/feature/authentication/screens/sign_up_screen.dart';
import 'package:travoli/feature/authentication/screens/splash_screen.dart';
import 'package:travoli/feature/authentication/screens/step1.dart';
import 'package:travoli/feature/dashboard/dashbord.dart';
import 'package:travoli/feature/dashboard/explore/screens/filter_screen.dart';
import 'package:travoli/feature/dashboard/explore/screens/house_details.dart';

import '../../../feature/authentication/screens/sign_in_screen.dart';
import '../../../feature/authentication/screens/step2.dart';

class AppRouter {
  static Route onGenerated(RouteSettings settings) {
    //print("Route name is ${settings.name}");
    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
        case CustomNavigationBar.routeName:
        return MaterialPageRoute(builder: (_) => const CustomNavigationBar());
       case OnBoardingScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case SignUpScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
        case SignInScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
         case NumberVerificationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NumberVerificationScreen());
        case Step1.routeName:
        return MaterialPageRoute(builder: (_) => const Step1());
        case Step2.routeName:
        return MaterialPageRoute(builder: (_) => const Step2());
        case HouseDetailScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HouseDetailScreen());
        case FilterScreen.routeName:
        return MaterialPageRoute(builder: (_) => const FilterScreen());
      default:
        return onError();
    }
  }
  static Route onError() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body: Center(
                child: Text(
                  "Error Screen",
                  style: Theme.of(_).textTheme.headline1,
                ),
              ),
            ));
  }
}
