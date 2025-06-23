class Produto{

  String? codigo;
  String? nome;
  double? preco;

  static int totalProdutos=0;



  Produto(String codigo, String nome, double preco){
    this.codigo = codigo;
    this.nome = nome;
    this.preco = preco;
    totalProdutos++;
  }

  void aplicarDesconto(double percentual) {
    if (percentual > 0 && percentual <= 100) {
      preco = preco! * (1 - percentual / 100);
    } else {
      print("Desconto inválido.");
    }
  }

  static void mostrarTotalProdutos(){
    print("Total de produtos: $totalProdutos");
  }

  void printaProduto([double? percentual]) {
    print("----- Produto -----");
    print("Código: $codigo");
    print("Nome: $nome");
    print("Preço original: R\$ ${preco!.toStringAsFixed(2)}");

    if (percentual != null && percentual > 0 && percentual <= 100) {
      double precoComDesconto = preco! * (1 - percentual / 100);
      print("Desconto: $percentual%");
      print("Preço com desconto: R\$ ${precoComDesconto.toStringAsFixed(2)}");
    }
  }
}
