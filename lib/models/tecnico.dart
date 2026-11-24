
import 'funcionario.dart';

class Tecnico extends Funcionario {
  String especialidade;
  String nivelExperiencia;
  String? certificacao;

  Tecnico({
    required super.idFuncionario,
    required super.nome,
    required super.cpf,
    required super.telefone,
    required super.salario,
    required super.dataContratacao,
    required this.especialidade,
    required this.nivelExperiencia,
    this.certificacao,
  });

  String get certificacaoTecnico =>
      certificacao ?? 'Não informada';

  @override
  String descreverFuncao() {
    return 'Funcionário da ala técnica (reparo e assistência).';
  }

  @override
  String toString() {
    return 'Tecnico{'
        'especialidade: $especialidade, '
        'nivelExperiencia: $nivelExperiencia, '
        'certificacao: $certificacao'
        '}';
  }
}
