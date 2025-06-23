import 'package:programacion_orientada_objetos/Carrinho2.dart';
import 'package:programacion_orientada_objetos/ProdutoAlimenticio.dart';
import 'package:programacion_orientada_objetos/ProdutoEletronico.dart';
void main() {
  var p1 = ProdutoEletronico(
    codigo: 'E01',
    nome: 'Smart TV 50"',
    preco: 2800.0,
    garantiaMeses: 12,
  );

  var p2 = ProdutoAlimenticio(
    codigo: 'A01',
    nome: 'Caixa de Leite',
    preco: 4.50,
    dataValidade: '25/12/2025',
  );

  var carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);

  carrinho.exibirCarrinho();
}
