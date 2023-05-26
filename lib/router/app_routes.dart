
import 'package:flutter/material.dart';
import 'package:widget_app/models/models.dart';

import 'package:widget_app/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOption(route: 'Listview1', icon: Icons.list_outlined, name: 'List View 1 Screen', screen: const ListView1Screen()),
    MenuOption(route: 'Listview2', icon: Icons.list_outlined, name: 'List View 2 Screen', screen: const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.view_list_sharp, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.warning_amber_rounded, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.person, name: 'Avatar Screen', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation_rounded, name: 'Animated Screen', screen: const AnimatedScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes ={};

   for (var option in menuOption) {
     appRoutes.addAll({option.route:(BuildContext constext) => option.screen });
   }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes ={
  //   'listview1' :(BuildContext context) => const ListView1Screen(),
  //   'listview2' :(BuildContext context) => const ListView2Screen(),
  //   'alert'     :(BuildContext context) => const AlertScreen(),
  //   'card'      :(BuildContext context) => const CardScreen(),
  //   'home'      :(BuildContext context) => const HomeScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}
