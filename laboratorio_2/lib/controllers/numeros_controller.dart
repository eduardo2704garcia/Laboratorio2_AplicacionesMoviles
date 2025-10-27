import '../models/numeros_model.dart';

class NumerosController {
  String procesar(String numerosStr) {
    if (numerosStr.isEmpty) {
      return 'Error: Ingrese al menos un número.';
    }

    List<double> numeros = [];
    for (var n in numerosStr.split(',')) {
      final valor = double.tryParse(n.trim());
      if (valor == null) {
        return 'Error: Ingrese solo números válidos.';
      }
      numeros.add(valor);
    }

    final modelo = NumerosModel(numeros);
    final resultado = modelo.contarValores();

    return 'Positivos: ${resultado['positivos']}\n'
        'Negativos: ${resultado['negativos']}\n'
        'Ceros: ${resultado['ceros']}';
  }
}
