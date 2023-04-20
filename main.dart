import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  runApp(aula2());
}

class aula2 extends StatelessWidget {
  void clickEnviar() {
    print("mais um seguidor enviou Vbuks ao Amumu Faraó");
  }

  void clickCadastrar() {}

  void clickSalvar() {}

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Projeto Aula 02"),
        ),
        body: Container(
          width: 300,
          margin: EdgeInsets.symmetric(horizontal: 500),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  ElevatedButton(
                      onPressed: clickEnviar, child: const Text("Enviar")),
                  ElevatedButton(
                      onPressed: clickCadastrar,
                      child: const Text("Cadastrar")),
                  ElevatedButton(
                      onPressed: clickSalvar, child: const Text("Salvar")),
                ],
              )),
              const Expanded(
                  child: Column(
                children: [
                  Text("Aprendendo"),
                  Text("programação"),
                  Text("Flutter"),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
