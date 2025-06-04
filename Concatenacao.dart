import 'dart:io';
void main(){
  print("Insira um seu nome, idade e cidade \n");
  String nome;
  String entrada;
  String cidade;
  nome= stdin.readLineSync()!;
  entrada= stdin.readLineSync()!;
  cidade= stdin.readLineSync()!;

  int idade= int.parse(entrada);

  print("$nome tem $idade anos e mora em $cidade");

    }