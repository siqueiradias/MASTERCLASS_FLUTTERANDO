import 'dart:io';
void main() {
  late double altura; // Mt
  late double peso; // Kg

  print("\x1B[2J\x1B[0;0H"); //Limpa a tela

  var loop = true;
  //Loop para obter e tratar os dados de entrada
  while (loop) {
    print('Informe a altura (Mt): ');
    String? textAltura = stdin.readLineSync();
    print('Informe o Peso (Kg)');
    String? textPeso = stdin.readLineSync();

    double? alturaTemp = double.tryParse(textAltura!.replaceAll(',', '.'));
    double? pesoTemp = double.tryParse(textPeso!.replaceAll(',', '.'));
    
    //Verifica se os dados informados são valores valídos
    if ((alturaTemp is double) && (pesoTemp is double)) {
      loop = false; //saída do loop
      altura = alturaTemp;
      peso = pesoTemp;
    } else {
      print("\x1B[2J\x1B[0;0H"); //Limpa a tela
      print('Altura: $textAltura mt.\nPeso: $textPeso kg.');
      print('Informações incorretas, informe novamente!');
    }
  }

  double imc = calcular_imc(altura: altura, peso: peso);

  print("\x1B[2J\x1B[0;0H"); //Limpa a tela
  print("${'-' * 15} Resultado do IMC ${'-' * 15}");
  print('Altura: $altura mt.\nPeso: $peso kg.');
  print('IMC: $imc');

  //Classificação IMC
  if (imc < 18.5) {
    print('Abaixo do peso normal!');
  } else if ((imc >= 18.5) && (imc < 25.0)) {
    print('Peso normal!');
  } else if ((imc >= 25.0) && (imc < 30.0)) {
    print('Excesso de peso!');
  } else if ((imc >= 30.0) && (imc < 35.0)) {
    print('Obesidade classe I!');
  } else if ((imc >= 35.0) && (imc < 40.0)) {
    print('Obesidade classe II!');
  } else {
    print('Obesidade classe III!');
  }
  print('\n');
}

///Calcula o IMC: Peso/Altura^2
double calcular_imc({required double altura, required double peso}) {
  return peso / (altura * altura);
}
