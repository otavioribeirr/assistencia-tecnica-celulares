
import 'funcionario.dart';

class Atendente extends Funcionario {
  Atendente({
    required super.idFuncionario,
    required super.nome,
    required super.cpf,
    required super.telefone,
    required super.salario,
    required super.dataContratacao,
  });

  @override
  String descreverFuncao() {
    return 'Funcionário da ala comercial (atendimento).';
  }

  @override
  String toString() {
    return 'Atendente{nome: $nome, telefone: $telefone}';
  }
}
