class NumerosModel {
  final List<double> numeros;

  NumerosModel(this.numeros);

  Map<String, int> contarValores() {
    int positivos = 0, negativos = 0, ceros = 0;

    for (var n in numeros) {
      if (n > 0)
        positivos++;
      else if (n < 0)
        negativos++;
      else
        ceros++;
    }

    return {'positivos': positivos, 'negativos': negativos, 'ceros': ceros};
  }
}
