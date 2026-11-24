
class Peca {
  final int _idPeca;
  String nome;
  String fabricante;
  double preco;
  int quantidadeEstoque;

  Peca({
    required int idPeca,
    required this.nome,
    required this.fabricante,
    required this.preco,
    required this.quantidadeEstoque,
  }) : _idPeca = idPeca {
    if (quantidadeEstoque < 0) {
      throw ArgumentError(
        'O estoque não pode ser negativo.',
      );
    }
  }

  int get idPeca => _idPeca;

  void setQuantidadeEstoque(int quantidade) {
    if (quantidade < 0) {
      throw ArgumentError(
        'O estoque não pode ser negativo.',
      );
    }

    quantidadeEstoque = quantidade;
  }

  bool precoValido() {
    return preco >= 0;
  }

  @override
  String toString() {
    return 'Peca{'
        'idPeca: $_idPeca, '
        'nome: $nome, '
        'fabricante: $fabricante, '
        'preco: $preco, '
        'quantidadeEstoque: $quantidadeEstoque'
        '}';
  }
}
