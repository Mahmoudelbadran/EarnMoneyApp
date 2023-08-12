import 'package:earnmoney/presentation/screens/home_screen/home_screen.dart';
import 'package:earnmoney/presentation/screens/offers_screen/offers_screen.dart';
import 'package:earnmoney/presentation/screens/support_screen/support_screen.dart';
import 'package:earnmoney/presentation/screens/video_screen/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:earnmoney/presentation/screens/splash_screen/splash_screen.dart';

import '../../core/chang_page/change_pages.dart' as screens;
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/sign-in_screen/sign-in_screen.dart';
import '../screens/sign_up_screen/sign_up_screen.dart';

class AppRouter {
  late Widget startScreen;

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    startScreen = const SplashScreen();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(
          builder: (_) => startScreen,
        );
      case screens.signInScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const SignInScreen(),
        );
      case screens.signUpScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const SignUpScreen());
      case screens.onBoardingScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const OnBoardingScreen());
      case screens.homeScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const HomeScreen());
      case screens.offersScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const OffersScreen());
      case screens.videoScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const VideoScreen());
      case screens.supportScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => const SupportScreen());
      default:
        return null;
    }
  }
}