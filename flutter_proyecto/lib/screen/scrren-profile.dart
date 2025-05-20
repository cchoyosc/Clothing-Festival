import 'package:flutter/material.dart';
import 'package:flutter_proyecto/core/app_assets.dart';
import 'package:flutter_proyecto/core/routes.dart';
import 'package:flutter_proyecto/core/color.dart';
import 'package:flutter_proyecto/core/string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                Navigator.pop(context); // Ya está en profile
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/icons/user.png'), // Asegúrate de tener esta imagen
            ),
            const SizedBox(height: 20),
            const Text(
              'Cristian Camilo Hernández',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColor.bluetext,
              ),
            ),
            const SizedBox(height: 10),
            const ProfileInfoRow(
              icon: Icons.email,
              label: 'Correo',
              value: 'cristiancamiloh.14@gmail.com',
            ),
            const ProfileInfoRow(
              icon: Icons.phone,
              label: 'Teléfono',
              value: '+57 300 123 4567',
            ),
            const ProfileInfoRow(
              icon: Icons.location_on,
              label: 'Ubicación',
              value: 'Bogotá, Colombia',
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                // Acción para editar perfil
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              icon: const Icon(Icons.edit, color: AppColor.whitebg),
              label: const Text(
                'Editar Perfil',
                style: TextStyle(color: AppColor.whitebg, fontSize: 16),
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

class ProfileInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const ProfileInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: AppColor.primary),
          const SizedBox(width: 10),
          Text(
            '$label: ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.bluetext,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: AppColor.bluetext),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
