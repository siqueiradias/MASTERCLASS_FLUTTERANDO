import 'dart:io';

void main() {
  print("\x1B[2J\x1B[0;0H"); //Limpa a tela
  print('Informe um valor: ');
  int valor = receberValor();

  var serieFib = serieFibonacci(valores: [], n: valor);
  double somaFibonacci =
      somarLista(lista: serieFib, posicao: 0, somatorio: 0.0);

  print('=' * 100);
  print('Serie de Fibonacci: $serieFib');
  print('');
  print('Somatorio da Serie de Fibonacci: $somaFibonacci');
  print('-' * 100);
}

///Crie a Série de Fibonacci:
///F(0)=0; F(1)=1; F(n) = F(n-1) + F(n-2), n>1
dynamic serieFibonacci({required List valores, required int n}) {
  if (n == 1) {
    return valores;
  } else {
    if (valores.length < 2) {
      valores.add(0.0);
      valores.add(1.0);
    }
    double x = valores[valores.length - 1] + valores[valores.length - 2];
    valores.add(x);
    return serieFibonacci(valores: valores, n: n - 1);
  }
}

///Faz o somatório do conteúdo da lista  
double somarLista(
    {required List lista, required int posicao, required double somatorio}) {
  if (posicao >= lista.length - 1) {
    return somatorio;
  } else {
    posicao++;
    somatorio += lista[posicao];
    return somarLista(lista: lista, posicao: posicao, somatorio: somatorio);
  }
}

///Trata a entrada de dados do usuario
int receberValor() {
  String? textValor = stdin.readLineSync();
  int? x = int.tryParse(textValor!);
  if ((x is int) && (x > 1)) {
    return x;
  } else {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print("Valor invalido!");
    print("Valor deve ser um número maior que '1'.");
    print('Informe um valor: ');
    return receberValor();
  }
}
