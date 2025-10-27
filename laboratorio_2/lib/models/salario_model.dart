class SalarioModel {
  final double salarioInicial;
  final double incrementoAnual;
  final int anios;

  SalarioModel(this.salarioInicial, this.incrementoAnual, this.anios);

  List<double> calcularSalarios() {
    List<double> salarios = [];
    double salario = salarioInicial;

    for (int i = 1; i <= anios; i++) {
      salario += salario * incrementoAnual / 100;
      salarios.add(double.parse(salario.toStringAsFixed(2)));
    }

    return salarios;
  }
}
