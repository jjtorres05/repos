class Produto2{

  late String _codigo;
  late String _nome;
  late double _preco;

  static int totalProdutos=0;



  Produto2(String codigo, String nome, double preco){
    _codigo = codigo;
    _nome = nome;
    _preco = preco;
    totalProdutos++;
  }

  void setNovoPreco(double preco){

  }
  static void mostrarTotalProdutos(){
    print("Total de produtos: $totalProdutos");
  }

    // GETTERS
  String get codigo => _codigo;
  String get nome => _nome;
  double get preco => _preco;

  // SETTERS
  set codigo(String novoCodigo) {
    _codigo = novoCodigo;
  }

  set nome(String novoNome) {
    _nome = novoNome;
  }

  set preco(double novoPreco) {
    if (novoPreco >= 0) {
      _preco = novoPreco;
    } else {
      print("Preço inválido.");
    }
  }


  void printaProduto([double? percentual]) {
    print("----- Produto -----");
    print("Código: $codigo");
    print("Nome: $nome");
    print("Preço original: R\$ ${preco.toStringAsFixed(2)}");

    if (percentual != null && percentual > 0 && percentual <= 100) {
      double precoComDesconto = preco * (1 - percentual / 100);
      print("Desconto: $percentual%");
      print("Preço com desconto: R\$ ${precoComDesconto.toStringAsFixed(2)}");
    }
  }
}
