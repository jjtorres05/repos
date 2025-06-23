import 'package:programacion_orientada_objetos/Produto2.dart';
import 'package:programacion_orientada_objetos/CarrinhoDeCompras.dart';

void main() {
  var p1 = Produto2('111', 'Mouse Gamer', 150.0);
  var p2 = Produto2('222', 'Monitor 24"', 950.0);
  var p3 = Produto2('333', 'Cadeira Gamer', 1200.0);

  var carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);

  carrinho.exibirCarrinho();
}