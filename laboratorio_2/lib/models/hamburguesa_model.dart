class HamburguesaModel {
  final List<String> tipos;
  static const Map<String, double> precios = {'S': 20, 'D': 25, 'T': 28};

  HamburguesaModel(this.tipos);

  double calcularTotal() {
    double total = 0;
    for (var tipo in tipos) {
      total += precios[tipo.toUpperCase()] ?? 0;
    }
    return total;
  }

  double aplicarRecargo(double total, bool conTarjeta) {
    return conTarjeta ? total * 1.05 : total;
  }
}
