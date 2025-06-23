import 'package:programacion_orientada_objetos/Produto2.dart';

void main() {
  Produto2 p1= Produto2("1111", "maca", 5.5);
  Produto2 p2= Produto2("2222", "banana", 6.5);
  Produto2 p3= Produto2("3333", "Morango", 7.5);


  p1.printaProduto(10);
  p2.printaProduto(50);
  p3.printaProduto();
  
  p1.preco=-10;
  print("Preco atual: ${p1.preco}");
  p1.preco=10;
  print("Novo preco: ${p1.preco}");

  Produto2.mostrarTotalProdutos();
  

}