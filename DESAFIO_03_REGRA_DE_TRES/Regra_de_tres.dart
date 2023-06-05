import 'dart:io';

void main() {
  List valores = [];
  getEntrada(valores);

  print("\x1B[2J\x1B[0;0H"); //Limpa a tela
  print('+++ Regra de Três Simples +++');
  print('');
  print('${valores[0]}/${valores[1]} = ${valores[2]}/${valores[3]}');
  print('');

  double resultado = calcularRegraDeTres(
      numeradorA: valores[0],
      denominadorA: valores[1],
      numeradorB: valores[2],
      denominadorB: valores[3]);

  print('>>> Resultado = $resultado');
}

///Recebe e valida os dados de Entrada do usuario
void getEntrada(List lista) {
  for (var i = 0; i < 4; i++) {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print('+++ Regra de Três Simples +++');
    print(
        "\nPara informar a incógnita deixe o campo vazio e pressione 'ENTER'\n");
    print(lista);
    bool valorValido = false;
    while (!valorValido) {
      print('Informe o ${i + 1}º valor: ');
      if ((i == 3) && (!lista.contains(''))) {
        lista.add('');
        valorValido = true;
        break;
      }
      String? textValor = stdin.readLineSync();
      if ((textValor != null) && (textValor == '') && (!lista.contains(''))) {
        lista.add(textValor);
        valorValido = true;
      } else if (double.tryParse(textValor!.replaceAll(',', '.')) is double) {
        lista.add(double.tryParse(textValor.replaceAll(',', '.')));
        valorValido = true;
      } else {
        print('VALOR INVALÍDO!');
        if (lista.contains('')) {
          print(
              "Incógnita JÁ FOI ADICIONADA, deve ser informada uma única vez.");
        }
        print('Verifique e informe novamente um valor: ');
      }
    }
  }
}

///Realiza o calculo da regra de três simples
double calcularRegraDeTres(
    {var numeradorA = '',
    var denominadorA = '',
    var numeradorB = '',
    var denominadorB}) {
  late double resultado;
  if (numeradorA == '') {
    resultado = (denominadorA * numeradorB) / denominadorB;
  } else if (denominadorA == '') {
    resultado = (numeradorA * denominadorB) / numeradorB;
  } else if (numeradorB == '') {
    resultado = (numeradorA * denominadorB) / denominadorA;
  } else {
    resultado = (denominadorA * numeradorB) / numeradorA;
  }
  return resultado;
}
