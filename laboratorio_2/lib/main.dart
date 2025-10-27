import 'package:flutter/material.dart';
import 'views/salario_view.dart';
import 'views/hamburguesa_view.dart';
import 'views/numeros_view.dart';
import 'views/promocion_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de Ejercicios',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => MenuPrincipal(),
        'salario': (context) => SalarioView(),
        'hamburguesa': (context) => HamburguesaView(),
        'numeros': (context) => NumerosView(),
        'promocion': (context) => PromocionView(),
      },
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal de Ejercicios'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Seleccione un ejercicio para comenzar:',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),

              // Botones del menú
              MenuButton(
                title: 'Ejercicio 4.5 - Sueldo del Vendedor',
                icon: Icons.attach_money,
                color: Colors.green,
                onPressed: () => Navigator.pushNamed(context, 'salario'),
              ),
              const SizedBox(height: 15),

              MenuButton(
                title: 'Ejercicio 4.6 - Hamburguesas',
                icon: Icons.fastfood,
                color: Colors.orange,
                onPressed: () => Navigator.pushNamed(context, 'hamburguesa'),
              ),
              const SizedBox(height: 15),

              MenuButton(
                title: 'Ejercicio 4.7 - Números Positivos y Negativos',
                icon: Icons.numbers,
                color: Colors.purple,
                onPressed: () => Navigator.pushNamed(context, 'numeros'),
              ),
              const SizedBox(height: 15),

              MenuButton(
                title: 'Ejercicio 4.8 - Promoción de Artículos',
                icon: Icons.local_offer,
                color: Colors.red,
                onPressed: () => Navigator.pushNamed(context, 'promocion'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
      ),
      icon: Icon(icon, color: Colors.white),
      label: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      onPressed: onPressed,
    );
  }
}
