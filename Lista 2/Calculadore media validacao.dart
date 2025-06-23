import 'dart:io';

double media(int n1, int n2, int n3){
  
  return (n1+n2+n3)/3;
}

void main() {
  print("Insira tres notas: \n");

  int nota1= int.parse(stdin.readLineSync()!);
  int nota2= int.parse(stdin.readLineSync()!);
  int nota3= int.parse(stdin.readLineSync()!);

  if (0>nota1||nota1>10||nota2<0||nota2>10||nota3<0||nota3>10 ) {
    print("Erro: Nota inválida inserida. As notas devem estar entre 0 e 10.");
  }
  else{
    print("Media: ${media(nota1, nota2, nota3)}");
  }

}