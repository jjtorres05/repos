import 'dart:io';
import 'dart:convert';

/// Função que lê cada linha de um arquivo de configuração e exibe no console.
/// Caso o arquivo não exista, exibe uma mensagem de erro.
Future<void> lerConfiguracoes(String nomeArquivo) async {
  final file = File(nomeArquivo);

  if (!await file.exists()) {
    print('Erro: Arquivo "$nomeArquivo" não encontrado.');
    return;
  }

  Stream<String> linhas = file.openRead().transform(utf8.decoder).transform(const LineSplitter());

  print("Configurações encontradas:");
  await for (var linha in linhas) {
    print(linha);
  }

  print('Arquivo "$nomeArquivo" lido e fechado.');
}

Future<void> main() async {
  print("Digite o nome de arquivo das chaves que você quer ler:");
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.trim().isEmpty) {
    print('Erro: Nome do arquivo não informado.');
    return;
  }

  await lerConfiguracoes(entrada);
}
