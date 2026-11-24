
class Funcionario {
  final int _idFuncionario;
  String nome;
  String cpf;
  String telefone;
  double salario;
  DateTime dataContratacao;

  Funcionario({
    required int idFuncionario,
    required this.nome,
    required this.cpf,
    required this.telefone,
    required this.salario,
    required this.dataContratacao,
  }) : _idFuncionario = idFuncionario;

  // Getter para acessar o ID privado
  int get idFuncionario => _idFuncionario;

  // Descreve a função do funcionário
  String descreverFuncao() {
    return 'Funcionário da assistência técnica.';
  }

  // Regra de negócio: verifica se o salário é válido
  bool salarioValido() {
    return salario >= 0;
  }
}
