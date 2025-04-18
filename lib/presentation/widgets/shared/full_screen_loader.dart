import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadeingMessages(){
    final messages = <String>[
    'Cargando peliculas',
    'Comprando palomitas',
    'Cargando populares',
    'Masivo bro...',
    'yoyoyo maquibas',
  ];
    return Stream.periodic(const Duration(milliseconds: 1200),(step){
      return messages[step];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere'),
          const SizedBox(height: 10),
          const CircularProgressIndicator(strokeWidth: 2),
          const SizedBox(height: 10),
          StreamBuilder(
          stream: getLoadeingMessages(), 
          builder: (context, snapshot){
          if (!snapshot.hasData)return const Text('Cargando...');
          return Text(snapshot.data!);
          },
          ),
        ],
      ),
    );
  }
}
