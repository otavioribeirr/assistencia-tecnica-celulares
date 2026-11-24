
class Cliente {
  final int _idCliente;
  String nome;
  String cpf;
  String telefone;
  String? email;
  String endereco;

  Cliente({
    required int idCliente,
    required this.nome,
    required this.cpf,
    required this.telefone,
    this.email,
    required this.endereco,
  }) : _idCliente = idCliente;

  // Getter para acessar o ID privado
  int get idCliente => _idCliente;

  // Regra de negócio: o nome não pode ficar vazio
  bool nomeValido() {
    return nome.trim().isNotEmpty;
  }
}