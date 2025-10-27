import '../models/promocion_model.dart';

class PromocionController {
  String procesar(String preciosStr) {
    if (preciosStr.isEmpty) {
      return 'Error: Ingrese los precios de los artículos separados por comas.';
    }

    List<double> precios = [];
    for (var p in preciosStr.split(',')) {
      final valor = double.tryParse(p.trim());
      if (valor == null) {
        return 'Error: Ingrese solo números válidos.';
      }
      precios.add(valor);
    }

    final promo = PromocionModel(precios);
    final resultado = promo.calcularDescuentos();

    String salida = '';
    List<Map<String, double>> detalle = List<Map<String, double>>.from(
      resultado['detalle'],
    );

    for (int i = 0; i < detalle.length; i++) {
      final item = detalle[i];
      salida +=
          'Artículo ${i + 1}: Precio \$${item['precio']}, '
          'Descuento \$${item['descuento']}, '
          'Precio final \$${item['final']}\n';
    }

    salida +=
        '\nTotal a pagar: \$${resultado['totalPagar'].toStringAsFixed(2)}';
    return salida;
  }
}
