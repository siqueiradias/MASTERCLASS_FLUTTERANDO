import 'dart:io';

void main() {
  late double valor;

  print("\x1B[2J\x1B[0;0H"); //Limpa a tela
  var loop = true;
  while (loop) {
    print('Informe um valor:');
    String? textValor = stdin.readLineSync();
    double? n = double.tryParse(textValor!);
    if ((n is double) && (n >= 2.0)) {
      loop = false;
      valor = n;
    } else {
      print('Valor informado invalido!');
      print("Valor deve ser um número maior do que '1'.");
    }
  }

  List serieFibonacci = fibonacci(valor: valor);
  double totalFibonacci = somar_lista(serieFibonacci);
  
  print('');
  print('Serie de Fibonacci: $serieFibonacci');
  print('');
  print('Somatorio da Serie de Fibonacci: $totalFibonacci');
  print('');
}

//F(0)=0; F(1)=1; F(n) = F(n-1) + F(n-2), n>1
List fibonacci({required double valor}) {
  List fib = [];
  for (var i = 0; i < valor - 1; i++) {
    if (i == 0) {
      fib.add(0.0);
      fib.add(1.0);
    }
    double x = fib[fib.length - 1] + fib[fib.length - 2];
    fib.add(x);
  }
  return fib;
}

double somar_lista(List lista) {
  double soma = 0;
  for (var i = 0; i < lista.length; i++) {
    soma += lista[i];
  }
  return soma;
}
