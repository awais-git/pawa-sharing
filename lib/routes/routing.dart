import 'dart:js';

import 'package:flutter/material.dart';
import 'package:pawa_sharing/view/auth/sigin.view.dart';
import 'package:pawa_sharing/view/auth/signup.view.dart';
import 'package:pawa_sharing/view/onboarding.view.dart';
import 'package:pawa_sharing/view/splash.view.dart';

const String splash = 'splash';
const String onBoarding = 'onBoarding';
const String signUp = 'signUp';
const String signIn = 'signIn';

Route<dynamic>? generateRoutes(RouteSettings routeSettings) {
  Map<String, dynamic> arguments =
      routeSettings.arguments as Map<String, dynamic>;
  switch (routeSettings.name) {
    case splash:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case signIn:
      return MaterialPageRoute(builder: (context) => const SignInView());

    case signUp:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    default:
      throw ("This route does not exist");
  }
}
