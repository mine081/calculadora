import 'dart:io';

  
void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "/","*", "-", "%"];
  void cabecalho() {
  print("   █████████            ████                      ████                █████                             ");
  print("  ███▒▒▒▒▒███          ▒▒███                     ▒▒███               ▒▒███                              ");
  print(" ███     ▒▒▒   ██████   ▒███   ██████  █████ ████ ▒███   ██████    ███████   ██████  ████████   ██████  ");
  print("▒███          ▒▒▒▒▒███  ▒███  ███▒▒███▒▒███ ▒███  ▒███  ▒▒▒▒▒███  ███▒▒███  ███▒▒███▒▒███▒▒███ ▒▒▒▒▒███ ");
  print("▒███           ███████  ▒███ ▒███ ▒▒▒  ▒███ ▒███  ▒███   ███████ ▒███ ▒███ ▒███ ▒███ ▒ ██▌      █▀▀▀▀▀ ");
  print("▒▒███     ███ █@@@ ██▌  ▓▓▓▓  ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌ ██▌      █@@@ ██▌ ");
  print(" ▒▒█████████ ▒▒████████ █████▒▒████@@  ▓▓████████ █████▓▓████@@@@▓▓████@@@@▓▓████@@  █████    ▓▓████@@@@");
  print("  ▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒ ▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒stown");
  }

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void calcular() {
    print("");
    cabecalho();
    switch (operacao) {
      case "+":
        soma();
        break;
      case "-":
        subtracao();
        break;    
      case "/":
          divisao();
          break;
      case "*":
        multiplicacao();
        break;
    }
  }

   
  void getOperacao() {
    print("Digite uma operação ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
    if (operacoes.contains(entrada)){
      operacao = entrada!;    
    } else {
      print("Operação invalid");
      getOperacao();
    }
    }
  }

   print("Digite o primeiro Valor.");

  entrada = stdin.readLineSync();

  if (entrada != null ) {   
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();
    
  print("Digite o segundo valor.");

    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (entrada != "") {
        numeroDois = double.parse(entrada!);
      }
    }
 
  print("O valor da operação é de ");

  calcular(); 

  }

                                                                                                      


  
  





  


  
  