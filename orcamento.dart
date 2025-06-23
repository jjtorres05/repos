import 'dart:io';

void main() {
  final double orcamento = 100.00;

  print("Preço Item 1: ");
  double item1 = double.parse(stdin.readLineSync()!);

  stdout.write("Preço Item 2: ");
  double item2 = double.parse(stdin.readLineSync()!);

  stdout.write("Preço Item 3: ");
  double item3 = double.parse(stdin.readLineSync()!);

  double total = item1 + item2 + item3;

  print("\nTotal: $total");

  if (total > orcamento) {
    print("Orçamento estourado!");
  } else {
    print("Dentro do orçamento!");
  }
}
