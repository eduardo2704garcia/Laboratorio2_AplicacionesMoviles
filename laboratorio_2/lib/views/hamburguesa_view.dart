import 'package:flutter/material.dart';
import '../widgets/input_calcular.dart';
import '../widgets/boton_calcular.dart';
import '../controllers/hamburguesa_controller.dart';

class HamburguesaView extends StatefulWidget {
  @override
  State<HamburguesaView> createState() => _HamburguesaViewState();
}

class _HamburguesaViewState extends State<HamburguesaView> {
  final TextEditingController tiposController = TextEditingController();
  final HamburguesaController controller = HamburguesaController();
  bool conTarjeta = false;
  String resultado = '';

  void calcular() {
    final res = controller.calcularTotal(tiposController.text, conTarjeta);
    setState(() {
      resultado = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('El Náufrago Satisfecho')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputVenta(
              label: 'Tipos (S, D, T) separados por comas',
              controller: tiposController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: conTarjeta,
                  onChanged: (val) => setState(() => conTarjeta = val!),
                ),
                Text('Pago con tarjeta (5% recargo)'),
              ],
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
