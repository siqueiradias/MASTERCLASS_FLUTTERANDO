import 'dart:io';

void main(List<String> args) {
  print("\x1B[2J\x1B[0;0H"); //Limpa a tela
  print('Verificação de CPF Valido');
  print('Informe um CPF  no formato: 111.222.333-44.');
  final CPF = stdin.readLineSync();
  final cpf = ValidatorCPF(CPF: CPF);
  if (cpf.validatorCPF()) {
    print('CPF é valido!');
  } else {
    print('CPF é invalido!');
  }
}

class ValidatorCPF {
  final CPF;

  ValidatorCPF({required this.CPF});

  bool validatorCPF() {
    if (checkTextCPF()) {
      List<int> cpfOnlyNum = stringToIntList(CPF);
      //Verificar primeiro digito
      var modfirstDig = (sumListDigito(cpfOnlyNum, 1) % 11);
      var checkFirstDig = 0;
      if (modfirstDig >= 2) {
        checkFirstDig = 11 - modfirstDig;
      }

      //Verificar segundo digito
      var modSecundDig = (sumListDigito(cpfOnlyNum, 2) % 11);
      var checkSecundDig = 0;
      if (modSecundDig >= 2) {
        checkSecundDig = 11 - modSecundDig;
      }

      if ((cpfOnlyNum[9] == checkFirstDig) &&
          (cpfOnlyNum[10] == checkSecundDig)) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool checkTextCPF() {
    if (RegExp(r'\d{3}.\d{3}.\d{3}-\d{2}').hasMatch(CPF)) {
      return true;
    } else {
      return false;
    }
  }

  int sumListDigito(List<int> cpfOnlyNum, int checkDigito) {
    var sum = 0;
    cpfOnlyNum.reversed;
    var count = 0;
    if (checkDigito == 1) {
      count = 9;
    } else {
      count = 10;
    }
    int mult = 2;
    while (count > 0) {
      count--;
      sum += cpfOnlyNum[count] * mult;
      mult++;
    }
    return sum;
  }

  List<int> stringToIntList(String cpf) {
    var listStringCPF = cpf.replaceAll('.', '').replaceAll('-', '').split('');
    var listTemp = <int>[];
    for (var item in listStringCPF) {
      listTemp.add(int.parse(item));
    }
    return listTemp;
  }
}
