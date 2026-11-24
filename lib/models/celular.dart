
import 'cliente.dart';

class Celular {
  final int _idCelular;
  String marca;
  String modelo;
  String imei;
  String numeroSerie;
  String estadoConservacao;
  Cliente? cliente;

  Celular({
    required int idCelular,
    required this.marca,
    required this.modelo,
    required this.imei,
    required this.numeroSerie,
    required this.estadoConservacao,
    this.cliente,
  }) : _idCelular = idCelular;

  int get idCelular => _idCelular;

  String get nomeCliente => cliente?.nome ?? 'Cliente não informado';

  bool imeiValido() {
    return imei.trim().isNotEmpty;
  }

  @override
  String toString() {
    return 'Celular{'
        'idCelular: $_idCelular, '
        'marca: $marca, '
        'modelo: $modelo, '
        'imei: $imei, '
        'numeroSerie: $numeroSerie, '
        'estadoConservacao: $estadoConservacao, '
        'cliente: $nomeCliente'
        '}';
  }
}