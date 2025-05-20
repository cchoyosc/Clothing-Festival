import 'package:flutter/material.dart';
import 'package:flutter_proyecto/screen/sceen-cart.dart';
import 'package:flutter_proyecto/screen/screen-categories.dart';
import 'package:flutter_proyecto/screen/screen-recover.dart';
import 'package:flutter_proyecto/screen/screen-tenis.dart';
import 'package:flutter_proyecto/screen/screnn-login.dart';
import 'package:flutter_proyecto/screen/screnn-splash.dart';
import 'package:flutter_proyecto/screen/scrren-profile.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_proyecto/core/routes.dart';
import 'package:flutter_proyecto/core/string.dart';
import 'package:flutter_proyecto/screen/screen-home.dart';
import 'package:flutter_proyecto/screen/screen-register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.NameApp,
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
        Routes.regis: (context) => const RegisterScreen(),
        Routes.recover: (context) => const RecoverScreen(),
        Routes.categories: (context) => CategoriesScreen(),
        Routes.cart: (context) => CartScreen(),
        Routes.tenis: (context) => TenisScreen(),
        Routes.profile: (context) => ProfileScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == Routes.home) {
          final args = settings.arguments as GoogleSignInAccount?;
          return MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          );
        }
        return null;
      },
    );
  }
}
