class VendedorModel {
  final double venta1;
  final double venta2;
  final double venta3;

  VendedorModel(this.venta1, this.venta2, this.venta3);

  double calcularSueldo(double totalVentas) {
    double sueldoBase = 36500;
    double comision = totalVentas * 0.12;

    return sueldoBase + comision;
  }

  //funcion para añadir un impuesto
  double calcularImpuesto(double totalVentas) {
    return totalVentas * 1.15;
  }

  double calcularDescuento(double totalVentas) {
    if (totalVentas > 2000) {
      return totalVentas * 0.80;
    } else {
      return totalVentas;
    }
  }
}
