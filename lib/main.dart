import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/titulo_secao.dart';
import 'package:flutter_application_1/widgets/contador.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 63, 163, 67),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Widgets iniciais (conteúdo)')),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const TituloSecao(titulo: 'Textos'),

            const Text(
              'texto estilizado 2',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const Text('texto padrão', style: TextStyle(fontSize: 20)),

            const Divider(),

            const TituloSecao(titulo: 'Imagem'),

            Image.network('https://picsum.photos/id/237/200/300'),

            const Divider(),

            const TituloSecao(titulo: 'Ícones'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.favorite, color: Colors.pink, size: 40),
                Icon(Icons.star, color: Colors.amberAccent, size: 40),
                Icon(Icons.settings, color: Colors.blue, size: 40),
              ],
            ),

            const Divider(),

            const TituloSecao(titulo: 'Contador'),

            const Contador(),
          ],
        ),
      ),
    );
  }
}
