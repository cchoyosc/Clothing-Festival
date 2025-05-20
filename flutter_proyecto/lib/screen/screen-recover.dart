import 'package:flutter/material.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class RecoverScreen extends StatelessWidget {
  const RecoverScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whitebg,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Center(
              child: Image.asset(
                'assets/icons/applogo1.png',
                width: 250,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                AppStrings.NameApp,
                style: TextStyle(
                  fontSize: 30,
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                AppStrings.Recover,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.text,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildLabel(AppStrings.Mail),
            const SizedBox(height: 10),
            _buildTextField('Email'),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.login);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.text,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: AppColor.primary, width: 2),
                  ),
                ),
                child: const Text(
                  AppStrings.Recover,
                  style: TextStyle(color: AppColor.primary, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Ejemplo de tus funciones helper, por si no las tienes:

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColor.text,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColor.text),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppColor.primary, width: 2),
        ),
      ),
    );
  }
}
