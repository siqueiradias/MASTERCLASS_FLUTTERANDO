import 'dart:io';

bool incognita = false;
void main() {
  print('+++ Regra de Três Simples +++');
  print("\nPara informar a incógnita digite: 'x'\n");
  print('Informe o numerador A:');
  var numeradorA = receberValor();
  print('Informe o denominador A:');
  var denominadorA = receberValor();
  print('Informe o numerador B:');
  var numeradorB = receberValor();
  print('Informe o denominador B:');
  var denominadorB = receberValor();

  print('\n');
  print('$numeradorA/$denominadorA = $numeradorB/$denominadorB');
  print('');

  late double resultado;
  if (numeradorA == 'x') {
    resultado = (double.parse(denominadorA) * double.parse(numeradorB)) /
        double.parse(denominadorB);
  } else if (denominadorA == 'x') {
    resultado = (double.parse(numeradorA) * double.parse(denominadorB)) /
        double.parse(numeradorB);
  } else if (numeradorB == 'x') {
    resultado = (double.parse(numeradorA) * double.parse(denominadorB)) /
        double.parse(denominadorA);
  } else if (denominadorB == 'x') {
    resultado = (double.parse(denominadorA) * double.parse(numeradorB)) /
        double.parse(numeradorA);
  } else {
    resultado = (double.parse(numeradorA) * double.parse(denominadorB)) /
        (double.parse(denominadorA) * double.parse(numeradorB));
  }

  if (incognita) {
    print('Resultado da Rega de Três Simples');
    print('>>> x = $resultado');
  } else {
    print('>>> Resultado da Rega de Três Simples: $resultado.');
  }
}

///Trata a entrada de dados do usuario
String receberValor() {
  String? textValor = stdin.readLineSync();
  if ((textValor != null) &&
      (textValor.toLowerCase() == 'x') &&
      (incognita == false)) {
    incognita = true;
    return textValor.toLowerCase();
  }
  double? x = double.tryParse(textValor!);
  if (x is double) {
    return x.toString();
  } else {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print("Valor invalido!");
    if (incognita == false) {
      print("Informe a letra 'x' como incógnita.");
    } else {
      print("A incógnita 'x' deve ser informada uma única vez.");
      print("A incógnita 'x' JÁ foi informada.");
    }
    print('Verifique e informe novamente um valor: ');
    return receberValor();
  }
}
