import 'package:flutter/material.dart';

class EmpleadosPage extends StatelessWidget {
  const EmpleadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuestro Equipo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/JazminAnaya/UII-Act3-Drawer-Cinepolis-Valtierra-6-I/refs/heads/main/empleados.jfif', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text('Atención al Cliente', style: TextStyle(fontSize: 20, color: Color(0xFF003D7A))),
          ],
        ),
      ),
    );
  }
}