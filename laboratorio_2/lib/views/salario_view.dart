import 'package:flutter/material.dart';
import '../widgets/input_calcular.dart';
import '../widgets/boton_calcular.dart';
import '../controllers/salario_controller.dart';

class SalarioView extends StatefulWidget {
  @override
  State<SalarioView> createState() => _SalarioViewState();
}

class _SalarioViewState extends State<SalarioView> {
  final TextEditingController salarioInicialController =
      TextEditingController();
  final TextEditingController incrementoController = TextEditingController();
  final TextEditingController aniosController = TextEditingController();
  final SalarioController salarioController = SalarioController();
  String resultado = '';

  void calcular() {
    final res = salarioController.calcularSalario(
      salarioInicialController.text,
      incrementoController.text,
      aniosController.text,
    );

    setState(() {
      resultado = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Incremento Salarial')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputVenta(
              label: 'Salario inicial',
              controller: salarioInicialController,
            ),
            InputVenta(
              label: 'Incremento (%)',
              controller: incrementoController,
            ),
            InputVenta(label: 'Años', controller: aniosController),
            BotonCalcular(onPressed: calcular),
            SizedBox(height: 20),
            Text(resultado, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
