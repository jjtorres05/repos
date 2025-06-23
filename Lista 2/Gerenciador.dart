import 'dart:io';

void adicionarTarefa(String tarefa, List<String> lista) {
  if (tarefa.trim().isNotEmpty) {
    lista.add(tarefa.trim());
    print("Tarefa adicionada com sucesso!\n");
  } else {
    print("Tarefa inválida.\n");
  }
}

void listarTarefas(List<String> lista) {
  print("\n--- Tarefas Pendentes ---");
  for (int i = 0; i < lista.length; i++) {
    if (!lista[i].endsWith("(concluido)")) {
      print("${i + 1}. ${lista[i]}");
    }
  }

  print("\n--- Tarefas Concluídas ---");
  for (int i = 0; i < lista.length; i++) {
    if (lista[i].endsWith("(concluido)")) {
      print("${i + 1}. ${lista[i]}");
    }
  }
  print("");
}

void marcarComoConcluida(List<String> lista, int indice) {
  if (indice > 0 && indice <= lista.length) {
    if (!lista[indice - 1].endsWith("(concluido)")) {
      lista[indice - 1] += " (concluido)";
      print("Tarefa marcada como concluída!\n");
    } else {
      print("Essa tarefa já está concluída.\n");
    }
  } else {
    print("Número inválido.\n");
  }
}

Future<void> salvarTarefasEmArquivo(List<String> lista) async {
  final arquivo = File("tarefas.txt");
  final sink = arquivo.openWrite();

  for (int i = 0; i < lista.length; i++) {
    sink.writeln("${i + 1}. ${lista[i]}"); 
  }

  await sink.close();
  print("Tarefas salvas no arquivo 'tarefas.txt'.");
}

Future<void> main() async {
  List<String> listaTarefas = [];
  String? entrada;

  do {
    print("Escolha uma opcao: ");
    print("1. Adicionar tarefa");
    print("2. Listar tarefas");
    print("3. Marcar tarefa como concluída");
    print("4. Sair");

    entrada = stdin.readLineSync();

    switch (entrada) {
      case '1':
        print("Insira a tarefa: ");
        String tarefa = stdin.readLineSync()!;
        adicionarTarefa(tarefa, listaTarefas);
        break;

      case '2':
        listarTarefas(listaTarefas);
        break;

      case '3':
        listarTarefas(listaTarefas);
        print("Digite o número da tarefa a marcar como concluída: ");
        int tarefaC = int.parse(stdin.readLineSync()!);
        marcarComoConcluida(listaTarefas, tarefaC);
        break;

      case '4':
        await salvarTarefasEmArquivo(listaTarefas);
        print("Encerrando programa.");
        break;

      default:
        print("Opção inválida.\n");
    }
  } while (entrada != '4');
}
