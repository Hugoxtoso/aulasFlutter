import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(aula3());
}

class aula3 extends StatefulWidget {

  @override
  State<aula3> createState() => _aula3State();
}

class _aula3State extends State<aula3> {

  var contador = 0;
  var contadorBotao = 0;
  var textoBotao = [
    "sim",
    "finalizar",
    "não",
  ];
  final  perguntas = [
    "Você está interessado em aderir ao amumu faraó?",
    "Você está disposto a dedicar sua vida ao amumu faraó?",
    "Você está disposto a abandonar seus cosumes pelo amumu faraó?",
    "Você está disposto a doar todos os seus patrimonios ao amumu faraó?",
    "Parabéns, você agora é um seguidor de amumu faraó!"
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Projeto Aula 03"),
        ),
        body: Column (
          children: [
            Text(perguntas[contador]),
            ElevatedButton(
              onPressed: () {
                if (contador <= 2){
                  setState(() {
                    contador: contador++;
                  });
                }
                if (contador == 3){
                  setState(() {
                    contador: contador++;
                    contadorBotao: 2;
                  });

                }
            }, 
            child: Text(textoBotao[contadorBotao]),
            ),
            ElevatedButton(
              onPressed: () {
                if (contador <= 2){
                  setState(() {
                    contador: contador++;
                  });
                }
                if (contador == 3){
                  setState(() {
                    contador: contador++;
                    contadorBotao: 2;
                  });

                }
            }, 
            child: Text(textoBotao[contadorBotao + 2]),
            ),
          
          ],


        )
      ),
    );
  }
}