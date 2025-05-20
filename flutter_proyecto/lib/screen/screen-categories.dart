import 'package:flutter/material.dart';
import 'package:flutter_proyecto/core/app_assets.dart';
import '../core/routes.dart';
import '../core/color.dart';
import '../core/string.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final List<Map<String, String>> categories = [
    {'title': AppStrings.Hoodie, 'image': AppAssets.hoodie},
    {'title': AppStrings.Pantalon, 'image': AppAssets.pantalon},
    {'title': AppStrings.Camiseta, 'image': AppAssets.camiseta},
    {'title': AppStrings.Tenis, 'image': AppAssets.tenis},
  ];

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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'CATEGORÍAS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.bluetext,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Aquí está el GridView protegido por Expanded
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];

                  return InkWell(
                    onTap: () {
                      // Puedes personalizar las rutas según cada categoría
                      Navigator.pushNamed(context, Routes.tenis);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColor.primary,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Image.asset(
                                category['image']!,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              category['title']!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColor.whitebg,
                                shadows: [
                                  Shadow(
                                    color: Colors.black26,
                                    offset: Offset(2, 2),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
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
              color: AppColor.text,
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
