import 'package:flutter/material.dart';
import '../widgets/input_calcular.dart';
import '../widgets/boton_calcular.dart';
import '../controllers/numeros_controller.dart';

class NumerosView extends StatefulWidget {
  @override
  State<NumerosView> createState() => _NumerosViewState();
}

class _NumerosViewState extends State<NumerosView> {
  final TextEditingController numerosController = TextEditingController();
  final NumerosController controller = NumerosController();
  String resultado = '';

  void calcular() {
    final res = controller.procesar(numerosController.text);
    setState(() {
      resultado = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador de Números')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputVenta(
              label: 'Ingrese números separados por comas',
              controller: numerosController,
            ),
            BotonCalcular(onPressed: calcular),
            SizedBox(height: 20),
            Text(resultado, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
