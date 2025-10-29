import 'package:flutter/material.dart';
import '../boton_calcular.dart';

class MainMenuOrganism extends StatelessWidget {
  const MainMenuOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Padding general alrededor del menú
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 120.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start, // Alinea al inicio
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Estira los hijos horizontalmente
        children: [
          const Text(
            'Menú Principal de Ejercicios',
            style: TextStyle(
              fontSize: 30, // Ajusta según sea necesario
              fontWeight: FontWeight.bold,
              color: Color(0xFFE88A60),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            'Seleccione un ejercicio para comenzar:',
            style: TextStyle(
              fontSize: 18, // Ajusta según sea necesario
              color: Color(0xFF6DA5A9),
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 60),
          BotonCalcular(
            label: 'Ejercicio 4.5 - Sueldo del Vendedor',
            onPressed: () => Navigator.pushNamed(context, 'salario'),
          ),
          const SizedBox(height: 35),
          BotonCalcular(
            label: 'Ejercicio 4.6 - Hamburguesas',
            onPressed: () => Navigator.pushNamed(context, 'hamburguesa'),
          ),
          const SizedBox(height: 35),
          BotonCalcular(
            label: 'Ejercicio 4.7 - Conteo de Cantidades',
            onPressed: () => Navigator.pushNamed(context, 'numeros'),
          ),
          const SizedBox(height: 35),
          BotonCalcular(
            label: 'Ejercicio 4.8 - Promoción de Artículos',
            onPressed: () => Navigator.pushNamed(context, 'promocion'),
          ),
        ],
      ),
    );
  }
}
