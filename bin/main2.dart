import 'package:programacion_orientada_objetos/Produto.dart';

void main() {
  Produto p1= Produto("1111", "maca", 5.5);
  Produto p2= Produto("2222", "banana", 6.5);
  Produto p3= Produto("3333", "Morango", 7.5);


  p1.printaProduto(10);
  p2.printaProduto(50);
  p3.printaProduto();

  Produto.mostrarTotalProdutos();
  

}
