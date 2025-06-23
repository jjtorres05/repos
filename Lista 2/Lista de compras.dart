import 'dart:io';


void salvarListaEmArquivo(List<String> lista, String nomeArquivo) {
  File file = File(nomeArquivo);
  IOSink sink = file.openWrite(); // sobreescribe el archivo

  for (String item in lista) {
    sink.writeln(item); // escribe cada item en una nueva línea
  }

  sink.close();
  print('Lista de compras salva em "$nomeArquivo" com sucesso!');
}

void main() {
  List<String> listaDeCompras = [];
  String entrada;

  print("Digite um item da lista de compras (ou 'fim' para terminar):");

  do {
    entrada = stdin.readLineSync() ?? "";
    if (entrada.toLowerCase() != 'fim') {
      listaDeCompras.add(entrada);
    }
  } while (entrada.toLowerCase() != 'fim');

  salvarListaEmArquivo(listaDeCompras, 'minhas_compras.txt');
}
