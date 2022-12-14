import 'package:auto_spare_part/main.dart';
import 'package:auto_spare_part/screens/bottom_nav/bottom_navigation_page.dart';
import 'package:auto_spare_part/screens/bottom_nav/home/product/product_info/product_info.dart';
import 'package:auto_spare_part/screens/bottom_nav/home/product/product_page.dart';
import 'package:auto_spare_part/screens/bottom_nav/info_store/info_store_page..dart';
import 'package:auto_spare_part/screens/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'bottom_nav/home/home_page.dart';

abstract class RouteName {
  static const splash = 'splash';
  static const bottomNav = 'bottomNav';
  static const infoStore = 'infoStore';
  static const main = 'main';
  static const admin = 'admin';
  static const home = 'home';
  static const product = 'product';
  static const productInfo = 'productInfo';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.productInfo:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => ProductInfoPage(
            productModel: args['singleProduct'],
          ),
        );
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());

      case RouteName.infoStore:
        return MaterialPageRoute(builder: (_) => InfoStorePage());

      case RouteName.bottomNav:
        return MaterialPageRoute(builder: (_) => BottomNavPage());
      case RouteName.main:
        return MaterialPageRoute(builder: (_) => MainPage());

      case RouteName.product:
        return MaterialPageRoute(builder: (_) => ProductPage());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => HomePage());

      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
