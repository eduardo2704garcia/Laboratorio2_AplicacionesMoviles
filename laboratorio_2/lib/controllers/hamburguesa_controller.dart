import '../models/hamburguesa_model.dart';

class HamburguesaController {
  String calcularTotal(String tipos, bool conTarjeta) {
    if (tipos.isEmpty) {
      return 'Error: Ingrese al menos un tipo de hamburguesa.';
    }

    List<String> lista = tipos.split(',');
    final hamburguesa = HamburguesaModel(lista);
    double total = hamburguesa.calcularTotal();
    double totalFinal = hamburguesa.aplicarRecargo(total, conTarjeta);

    return 'Total sin recargo: \$${total.toStringAsFixed(2)}\n'
        'Total final (${conTarjeta ? "con tarjeta" : "sin tarjeta"}): \$${totalFinal.toStringAsFixed(2)}';
  }
}
