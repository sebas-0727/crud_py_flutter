import 'package:flutter/material.dart';
import 'screens/anfibios_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // No hay declaración de 'home' aquí
      initialRoute: '/anfibios', // Ruta inicial configurada a '/anfibios'
      routes: {
        '/anfibios': (context) => AnfibiosScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/anfibios');
          },
          child: Text('Ver lista de Anfibios'),
        ),
      ),
    );
  }
}
