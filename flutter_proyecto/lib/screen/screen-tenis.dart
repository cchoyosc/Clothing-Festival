import 'package:flutter/material.dart';
import 'package:flutter_proyecto/core/app_assets.dart';
import 'package:flutter_proyecto/core/routes.dart';
import 'package:flutter_proyecto/core/color.dart';
import 'package:flutter_proyecto/core/string.dart';

class TenisScreen extends StatelessWidget {
  const TenisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: AppColor.whitebg),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/icons/applogo1.png',
          width: 100,
          height: 60,
          fit: BoxFit.contain,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.bluetext,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: AppColor.whitebg,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              iconColor: AppColor.primary,
              onTap: () {
                Navigator.pushNamed(context, Routes.categories);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Editar perfil'),
              iconColor: AppColor.primary,
              onTap: () {
                Navigator.pushNamed(context, Routes.profile);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.arrow_back, color: AppColor.whitebg),
                SizedBox(width: 10),
                Text(
                  'TENIS',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor.text,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'TENIS C/F PX-T1',
              style: TextStyle(
                fontSize: 22,
                color: AppColor.text,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 4,
                    color: Colors.white30,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Image.asset(
                AppAssets.tenis,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColorBox(color: Colors.red),
                ColorBox(color: Colors.lightGreen),
                ColorBox(color: Colors.blue),
              ],
            ),
            const SizedBox(height: 20),
            const Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                SizeOption(size: '37'),
                SizeOption(size: '38'),
                SizeOption(size: '39'),
                SizeOption(size: '40'),
                SizeOption(size: '41'),
                SizeOption(size: '42'),
                SizeOption(size: '43'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Diseñados para combinar comodidad y versatilidad, estos tenis blancos son el complemento perfecto para cualquier outfit. Con un diseño minimalista y moderno, están fabricados con materiales de alta calidad que garantizan durabilidad y frescura durante todo el día. Su suela de goma ofrece un excelente agarre y amortiguación, mientras que el interior acolchonado proporciona máximo confort en cada paso.',
              style: TextStyle(color: AppColor.text),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50, right: 30),
        child: SizedBox(
          width: 90,
          height: 90,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.cart);
            },
            backgroundColor: AppColor.secondary,
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  final Color color;

  const ColorBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class SizeOption extends StatelessWidget {
  final String size;

  const SizeOption({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.secondary,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.text),
      ),
      child: Text(
        size,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
