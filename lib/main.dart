
import 'package:flutter/material.dart';
import 'models/celular.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assistência Técnica',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {

    // Lista de celulares cadastrados
    final List<Celular> celulares = [
      Celular(
        idCelular: 1,
        marca: 'Samsung',
        modelo: 'Galaxy A54',
        imei: '000000000000001',
        numeroSerie: 'SAM001',
        estadoConservacao: 'Bom',
      ),
      Celular(
        idCelular: 2,
        marca: 'Apple',
        modelo: 'iPhone 13',
        imei: '000000000000002',
        numeroSerie: 'APL002',
        estadoConservacao: 'Excelente',
      ),
      Celular(
        idCelular: 3,
        marca: 'Motorola',
        modelo: 'Moto G84',
        imei: '000000000000003',
        numeroSerie: 'MOT003',
        estadoConservacao: 'Regular',
      ),
      Celular(
        idCelular: 4,
        marca: 'Xiaomi',
        modelo: 'Redmi Note 12',
        imei: '000000000000004',
        numeroSerie: 'XIA004',
        estadoConservacao: 'Bom',
      ),
      Celular(
        idCelular: 5,
        marca: 'Samsung',
        modelo: 'Galaxy S23',
        imei: '000000000000005',
        numeroSerie: 'SAM005',
        estadoConservacao: 'Excelente',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assistência Técnica de Celulares',
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        itemCount: celulares.length,

        itemBuilder: (context, index) {
          final celular = celulares[index];

          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),

            child: ListTile(
              leading: const Icon(Icons.phone_android),

              title: Text(
                '${celular.marca} ${celular.modelo}',
              ),

              subtitle: Text(
                'IMEI: ${celular.imei}\n'
                'Número de série: ${celular.numeroSerie}\n'
                'Estado: ${celular.estadoConservacao}',
              ),
            ),
          );
        },
      ),
    );
  }
}
