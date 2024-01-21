import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:travoli/feature/dashboard/explore/screens/explore_screen.dart';
import 'package:travoli/feature/dashboard/history/screens/history.dart';
import 'package:travoli/feature/dashboard/wishlist/screens/wishlist.dart';

import '../../core/configs/configs.dart';
import 'profile/screen/profile.dart';

class CustomNavigationBar extends StatefulWidget {
  static const routeName = "custom_nav_bar";
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late PersistentTabController _pageController;
  

  List<Widget> _children() {
    return [
      const ExploreScreen(),
      const WishlistScreen(),
      const HistoryScreen(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        contentPadding: 0,
        //iconSize: 24,
        activeColorPrimary: kPrimaryColor,
        icon: Image.asset(AssetsImages.activeExplore,height: 24.dy, width: 24.dx,
        ),
        inactiveIcon: Image.asset(AssetsImages.inactiveExplore,height: 24.dy, width: 24.dx),
        title: ("Explore"),
      ),

      PersistentBottomNavBarItem(
        contentPadding: 0,
        activeColorPrimary: kPrimaryColor,
        //iconSize: 80,
         icon: Image.asset(AssetsImages.activeWishlist, height: 24.dy, width: 24.dx),
        inactiveIcon: Image.asset(AssetsImages.inactiveWishlist,height: 24.dy, width: 24.dx),
        title: ("Wishlist"),
       
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        //iconSize: 80,
        activeColorPrimary: kPrimaryColor,
         icon: Image.asset(AssetsImages.activeHistory,height: 24.dy, width: 24.dx),
        inactiveIcon: Image.asset(AssetsImages.inactiveHistory,height: 24.dy, width: 24.dx),
        title: ("History"),
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        //iconSize: 80,
        activeColorPrimary: kPrimaryColor,
         icon: Image.asset(AssetsImages.activeProfile,height: 24.dy, width: 24.dx),
        inactiveIcon: Image.asset(AssetsImages.inactiveProfile,height: 24.dy, width: 24.dx),
        title: ("Profile"),
        textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w400)
      
      ),
    ];
  }

  late List<Map<Object, Object>> pages;

  int selectedPageIndex = 0;
  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _pageController = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _pageController,
      screens: _children(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: const NavBarDecoration(
        // borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,

      popActionScreens: PopActionScreensType.once,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarHeight: 92.dy,
      navBarStyle:
          NavBarStyle.simple, // Choose the nav bar style with this property.
    );
  }
}