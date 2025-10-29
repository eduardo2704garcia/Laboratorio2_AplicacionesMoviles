import 'package:flutter/material.dart';
import 'views/salario_view.dart';
import 'views/hamburguesa_view.dart';
import 'views/numeros_view.dart';
import 'views/promocion_view.dart';
import 'widgets/Organismos/MainMenuOrganism.dart';

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
      //Corrige el error de color
      theme: ThemeData(primaryColor: Color.fromRGBO(255, 240, 221, 1)),
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
      backgroundColor: Color(0xFFFDFBF5),
      body: SafeArea(
        child: SingleChildScrollView(child: const MainMenuOrganism()),
      ),
    );
  }
}
