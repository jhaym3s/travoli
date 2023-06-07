
 import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

Future<dynamic> PushToNewScreenWithArgument({required BuildContext context, required Widget navigateTo,required Object? arguments}) {
    return pushNewScreenWithRouteSettings(
          context,
          settings: RouteSettings(arguments: arguments),
          screen: navigateTo ,
          withNavBar: false,
          pageTransitionAnimation: PageTransitionAnimation.cupertino,
        );
  }

   Future<dynamic> pushToScreen(BuildContext context,Widget page) {
    return pushNewScreen(
                    context,
                    screen: page,
                    withNavBar: false,
                    pageTransitionAnimation:
                        PageTransitionAnimation.cupertino,
                  );
  }

   Future pushAndClearRoute({required BuildContext context,required String page}){
    return Navigator.of(context).pushNamedAndRemoveUntil(page, (route) => false);
   }