import 'dart:io';

void main() {
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);
  String operacao = stdin.readLineSync()!;

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

  if (operacao == "+") {
    Soma();
  }

  if (operacao == "-") {
    SUb();
  }

  if (operacao == "/") {
    Div();
  }

  if (operacao == "*") {
    Mul();
  }
}
