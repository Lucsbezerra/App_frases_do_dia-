import 'dart:math';

import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,

  ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

var _frases = [
  "Não pense que a cabeça aguenta se você parar",
  "Faça o que tu queres pois é tudo da lei da lei!",
  "Que o vinho quente do coração lhes suba à cabeça espessa"

];

var _fraseGerada ="Clique abaixo para gerar uma nova frase";

void _gerarFrase(){
var numeroSorteado= Random().nextInt(_frases.length);

setState(() {
  _fraseGerada= _frases[numeroSorteado];

});

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fases do dia "),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        //width: double.infinity,
        /*decoration: BoxDecoration(
         border: Border.all(width: 3, color: Colors.yellow) 
        )*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget>[
          Image.asset("images/logo.png"),
          Text(
            _fraseGerada,
          textAlign: TextAlign.justify,
          style: TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.italic,
          color: Colors.black,
          ),
          ),
          RaisedButton(
            child: Text(
              "Nova frase",
              style: TextStyle(
              fontSize: 25, 
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
            ),
            color:Colors.green,
            onPressed: _gerarFrase,
            )
        ],
        ),
      ) ,
      ),
    );
  }
}