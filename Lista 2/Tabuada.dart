import 'dart:io';

void rsposta(int n1){

  print("Tabuada do $n1: ");
  
  for (var i = 1; i <=10; i++) {
    print("$n1 X $i = ${i*n1}");
  }
}

void main() {
  print("Insira um numero:");

  int numero1= int.parse(stdin.readLineSync()!);
  rsposta(numero1);
}

