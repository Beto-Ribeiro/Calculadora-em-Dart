import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];
  String? entrada;

  void Soma() {
    print(numeroUm + numeroDois);
  }

  void SUb() {
    print(numeroUm - numeroDois);
  }

  void Div() {
    print(numeroUm / numeroDois);
  }

  void Mul() {
    print(numeroUm * numeroDois);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        Soma();

      case "-":
        SUb();

      case "/":
        Div();

      case "*":
        Mul();

        break;
    }
  }

  void getOperacao() {
    print("Digite a operação desejada ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      }
      else {
        print("Operação inválida");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("O resultado é: ");
  calcular();
}
