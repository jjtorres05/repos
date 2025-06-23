import 'package:programacion_orientada_objetos/Produto2.dart';

class ProdutoAlimenticio extends Produto2 {
  String dataValidade;

  ProdutoAlimenticio({
    required String codigo,
    required String nome,
    required double preco,
    required this.dataValidade,
  }) : super(codigo, nome, preco);

  void printaProduto([double? percentual]) {
    super.printaProduto();
    print('Data de Validade: $dataValidade');
  }
}
