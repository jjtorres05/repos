import 'Produto2.dart';
class CarrinhoDeCompras {
  final List<Produto2> _produtos = [];

  void adicionarProduto(Produto2 produto) {
    _produtos.add(produto);
  }

  double calcularTotal() {
    double total = 0;
    for (var produto in _produtos) {
      total += produto.preco;
    }
    return total;
  }

  void exibirCarrinho() {
    print('--- Itens no Carrinho ---');
    for (var produto in _produtos) {
      produto.printaProduto(); // ¡Polimorfismo ocurre aquí!
      print('');
    }
    print('-------------------------');
    print('Total do Carrinho: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}
