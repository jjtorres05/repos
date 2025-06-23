import 'package:programacion_orientada_objetos/Produto2.dart';

class ProdutoEletronico extends Produto2 {
  int garantiaMeses;

  ProdutoEletronico({
    required String codigo,
    required String nome,
    required double preco,
    required this.garantiaMeses,
  }) : super(codigo, nome, preco);

  
  void printaProduto([double? percentual]) {
    super.printaProduto();
    print('Garantia: $garantiaMeses meses');
  }
}

