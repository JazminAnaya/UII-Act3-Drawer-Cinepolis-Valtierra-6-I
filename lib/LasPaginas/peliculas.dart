import 'package:flutter/material.dart';

class PeliculasPage extends StatelessWidget {
  const PeliculasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuestras Películas')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://raw.githubusercontent.com/JazminAnaya/UII-Act3-Drawer-Cinepolis-Valtierra-6-I/refs/heads/main/peliculas.jfif', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text('Cartelera de la Semana', style: TextStyle(fontSize: 20, color: Color(0xFF003D7A))),
          ],
        ),
      ),
    );
  }
}