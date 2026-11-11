import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int contador = 0;
  Color corBotao = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: corBotao),
      onPressed: () {
        setState(() {
          contador++;

          if (corBotao == Colors.blue) {
            corBotao = Colors.red;
          } else {
            corBotao = Colors.blue;
          }
        });
      },
      child: Text('Cliques: $contador'),
    );
  }
}
