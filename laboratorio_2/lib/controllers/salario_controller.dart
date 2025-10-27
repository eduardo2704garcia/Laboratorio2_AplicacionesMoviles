import '../models/salario_model.dart';

class SalarioController {
  String calcularSalario(
    String salarioInicialStr,
    String incrementoStr,
    String aniosStr,
  ) {
    if (salarioInicialStr.isEmpty ||
        incrementoStr.isEmpty ||
        aniosStr.isEmpty) {
      return 'Error: Todos los campos deben ser llenados.';
    }

    final inicial = double.tryParse(salarioInicialStr);
    final incremento = double.tryParse(incrementoStr);
    final anios = int.tryParse(aniosStr);

    if (inicial == null || incremento == null || anios == null) {
      return 'Error: Ingrese valores numéricos válidos.';
    }

    final salarioModel = SalarioModel(inicial, incremento, anios);
    final salarios = salarioModel.calcularSalarios();

    String resultado = '';
    for (int i = 0; i < salarios.length; i++) {
      resultado += 'Año ${i + 1}: \$${salarios[i]}\n';
    }
    resultado += '\nSalario final: \$${salarios.last}';

    return resultado;
  }
}
