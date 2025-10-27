import 'package:flutter/material.dart';
import '../widgets/input_calcular.dart';
import '../widgets/boton_calcular.dart';
import '../controllers/promocion_controller.dart';

class PromocionView extends StatefulWidget {
  const PromocionView({super.key});

  @override
  State<PromocionView> createState() => _PromocionViewState();
}

class _PromocionViewState extends State<PromocionView> {
  final TextEditingController preciosController = TextEditingController();
  final PromocionController controller = PromocionController();
  String resultado = '';

  void calcular() {
    final res = controller.procesar(preciosController.text);
    setState(() {
      resultado = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Promoción de Artículos')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputVenta(
              label: 'Precios de artículos separados por comas',
              controller: preciosController,
            ),
            const SizedBox(height: 10),
            BotonCalcular(onPressed: calcular, label: 'Calcular Descuento'),
            const SizedBox(height: 20),
            Text(
              resultado,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
