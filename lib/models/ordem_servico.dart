
import 'celular.dart';
import 'tecnico.dart';
import 'peca.dart';

class OrdemServico {
  final int _idOrdem;
  DateTime dataEntrada;
  DateTime dataPrevisao;
  DateTime? dataConclusao;
  String defeitoRelatado;
  String status;
  double valorTotal;
  Celular? celular;
  Tecnico? tecnico;

  final Map<Peca, int> pecasUtilizadas = {};

  OrdemServico({
    required int idOrdem,
    required this.dataEntrada,
    required this.dataPrevisao,
    this.dataConclusao,
    required this.defeitoRelatado,
    required this.status,
    required this.valorTotal,
    this.celular,
    this.tecnico,
  }) : _idOrdem = idOrdem {
    if (dataPrevisao.isBefore(dataEntrada)) {
      throw ArgumentError(
        'A previsão não pode ser anterior à data de entrada.',
      );
    }

    if (valorTotal < 0) {
      throw ArgumentError('O valor total não pode ser negativo.');
    }
  }

  int get idOrdem => _idOrdem;

  void registrarUsoPeca(Peca peca, int quantidade) {
    if (quantidade <= 0) {
      throw ArgumentError(
        'A quantidade deve ser maior que zero.',
      );
    }

    if (peca.quantidadeEstoque < quantidade) {
      throw ArgumentError('Estoque insuficiente.');
    }

    peca.setQuantidadeEstoque(
      peca.quantidadeEstoque - quantidade,
    );

    pecasUtilizadas[peca] =
        (pecasUtilizadas[peca] ?? 0) + quantidade;
  }

  void setDataPrevisao(DateTime novaData) {
    if (novaData.isBefore(dataEntrada)) {
      throw ArgumentError(
        'A previsão não pode ser anterior à data de entrada.',
      );
    }

    dataPrevisao = novaData;
  }

  void setValorTotal(double valor) {
    if (valor < 0) {
      throw ArgumentError(
        'O valor total não pode ser negativo.',
      );
    }

    valorTotal = valor;
  }

  void setDataConclusao(DateTime? data) {
    dataConclusao = data;
  }

  void setDefeitoRelatado(String defeito) {
    defeitoRelatado = defeito;
  }

  void setStatus(String novoStatus) {
    status = novoStatus;
  }

  void setCelular(Celular? novoCelular) {
    celular = novoCelular;
  }

  void setTecnico(Tecnico? novoTecnico) {
    tecnico = novoTecnico;
  }

  @override
  String toString() {
    return 'OrdemServico{'
        'idOrdem: $_idOrdem, '
        'dataEntrada: $dataEntrada, '
        'dataPrevisao: $dataPrevisao, '
        'dataConclusao: $dataConclusao, '
        'defeitoRelatado: $defeitoRelatado, '
        'status: $status, '
        'valorTotal: $valorTotal'
        '}';
  }
}
