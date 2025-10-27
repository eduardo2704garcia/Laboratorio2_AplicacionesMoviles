class PromocionModel {
  final List<double> precios;

  PromocionModel(this.precios);

  Map<String, dynamic> calcularDescuentos() {
    List<Map<String, double>> detalle = [];
    double totalPagar = 0;

    for (var precio in precios) {
      double descuento = 0;

      if (precio >= 200) {
        descuento = 0.15;
      } else if (precio > 100 && precio < 200) {
        descuento = 0.12;
      } else {
        descuento = 0.10;
      }

      double montoDescuento = precio * descuento;
      double precioFinal = precio - montoDescuento;

      detalle.add({
        'precio': precio,
        'descuento': montoDescuento,
        'final': precioFinal,
      });

      totalPagar += precioFinal;
    }

    return {'detalle': detalle, 'totalPagar': totalPagar};
  }
}
