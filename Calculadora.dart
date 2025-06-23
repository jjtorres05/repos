import 'dart:io';
void main(){
  print("Insira doir numero a continuacao: \n");
  String num1;
  String num2;
  num1= stdin.readLineSync()!;
  num2= stdin.readLineSync()!;
  double numero1= double.parse(num1);
  double numero2= double.parse(num2);
  double soma = numero1 + numero2;
  double sub = numero1 - numero2;
  double multi = numero1 * numero2;
  double div = numero1 / numero2;
  double media = (numero1 + numero2)/2;
  double resto = numero1 % numero2;

  print("Soma: $soma");
  print("Subtracao: $sub");
  print("Multiplicacao: $multi");
  print("Divisao: $div");
  print("Media arirmetica $media");
  print("Resto da divisao: $resto");
    }