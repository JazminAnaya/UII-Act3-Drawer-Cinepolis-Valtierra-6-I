import 'package:flutter/material.dart';
import 'LasPaginas/peliculas.dart';
import 'LasPaginas/sucursales.dart';
import 'LasPaginas/alimentos.dart';
import 'LasPaginas/empleados.dart';

void main() => runApp(const CinepolisApp());

class CinepolisApp extends StatelessWidget {
  const CinepolisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinépolis Valtierra',
      // Definición de Colores Globales
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF003D7A),
          primary: const Color(0xFF003D7A), // Azul
          secondary: Colors.amber, // Amarillo
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/peliculas': (context) => const PeliculasPage(),
        '/sucursales': (context) => const SucursalesPage(),
        '/alimentos': (context) => const AlimentosPage(),
        '/empleados': (context) => const EmpleadosPage(),
      },
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cinépolis Valtierra'),
        centerTitle: true,
        backgroundColor: const Color(0xFF003D7A),
        foregroundColor: Colors.white,
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.movie_filter, size: 100, color: Colors.blue.shade900),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido a la Cartelera\nDesliza para ver el menú',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFF003D7A)),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image(
                  image: NetworkImage('https://raw.githubusercontent.com/JazminAnaya/UII-Act3-Drawer-Cinepolis-Valtierra-6-I/refs/heads/main/Cinepolis%20logo.jpg'),
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            accountName: const Text(
              'Cinépolis Valtierra',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            accountEmail: const Text(
              'Calle Senegal #7656\nTel: 656-432-5678\ncinepolis_valtierra@gmail.com',
              style: TextStyle(fontSize: 12),
            ),
          ),
          _crearOpcion(context, Icons.movie, 'Películas', '/peliculas'),
          _crearOpcion(context, Icons.location_on, 'Sucursales', '/sucursales'),
          _crearOpcion(context, Icons.fastfood, 'Alimentos', '/alimentos'),
          _crearOpcion(context, Icons.badge, 'Empleados', '/empleados'),
        ],
      ),
    );
  }

  Widget _crearOpcion(BuildContext context, IconData icono, String nombre, String ruta) {
    return ListTile(
      leading: Icon(icono, color: const Color(0xFF003D7A)),
      title: Text(nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.amber),
      onTap: () {
        Navigator.pop(context); // Cierra el Drawer
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}