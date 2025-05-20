import 'package:flutter/material.dart';
import '../core/color.dart';
import '../core/routes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar como el de CategoriesScreen
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
      // Drawer igual
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
      backgroundColor: AppColor.whitebg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'CARRITO',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColor.bluetext,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cantidad y precio
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'UNIDADES: 1',
                      style: TextStyle(color: AppColor.text),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: const [
                        Icon(Icons.add, color: AppColor.text),
                        SizedBox(width: 10),
                        Icon(Icons.remove, color: AppColor.text),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '\$80.000',
                      style: TextStyle(color: AppColor.text),
                    ),
                  ],
                ),
                const SizedBox(width: 30),
                // Imagen del producto
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    border: Border.all(color: AppColor.text),
                  ),
                  child: Image.asset(
                    'assets/images/camiseta.png', // ¡Cambia esto según tu imagen!
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'TOTAL:     \$80.000',
                style: TextStyle(color: AppColor.text, fontSize: 16),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Botón REGRESAR
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[200],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'REGRESAR',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                // Botón IR A PAGAR
                ElevatedButton(
                  onPressed: () {
                    // Acción de pagar
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.secondary,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'IR A PAGAR',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
