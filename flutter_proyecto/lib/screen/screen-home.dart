import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitebg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2), // Un poco más de espacio arriba
          Center(
            child: Image.asset(
              'assets/icons/applogo1.png',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              AppStrings.NameApp,
              style: TextStyle(
                color: AppColor.bluetext,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(flex: 1),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.login);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: AppColor.text, width: 2),
                ),
              ),
              child: const Text(
                AppStrings.Begin,
                style: TextStyle(color: AppColor.whitebg, fontSize: 20),
              ),
            ),
          ),
          const Center(
            child: Text(
              AppStrings.NameApp,
              style: TextStyle(
                fontSize: 30,
                color: AppColor.whitebg,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Routes.regis);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashFactory: NoSplash.splashFactory,
                foregroundColor: AppColor.text,
              ),
              child: const Text(
                AppStrings.Register,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const Spacer(flex: 3), // Espacio inferior para balancear el diseño
        ],
      ),
    );
  }
}
