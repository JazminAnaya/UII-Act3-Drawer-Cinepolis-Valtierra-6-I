import 'package:flutter/material.dart';

class SucursalesPage extends StatelessWidget {
  const SucursalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sucursales')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/JazminAnaya/UII-Act3-Drawer-Cinepolis-Valtierra-6-I/refs/heads/main/sucursales.jfif', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text('Encuentra tu cine más cercano', style: TextStyle(fontSize: 20, color: Color(0xFF003D7A))),
          ],
        ),
      ),
    );
  }
}