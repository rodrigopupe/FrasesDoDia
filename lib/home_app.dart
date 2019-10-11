import 'package:flutter/material.dart';

import 'dart:math';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  var _frase = 'Clique no botão para gerar uma frase!';

  final _lista = [
    "Quem ri por último... é retardado.",
    "Alegria de pobre é impossível.",
    "Em casa de ferreiro, só tem ferro.",
    "Gato escaldado... morre!",
    "Quando um não quer, o outro insiste.",
    "Os últimos serão desclassificados.",
    "Depois da tempestade, vem... a gripe.",
    "Antes tarde do que... mais tarde.",
    "Em terra de cego, quem tem um olho é... caolho mesmo."
  ];

  void _geraNovaFrase() {
    setState(() {
      var indiceSorteado = Random().nextInt(_lista.length);
      _frase = _lista[indiceSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        // decoration: BoxDecoration(
        // border: Border.all(width: 3, color: Colors.amber,),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Text(
              _frase,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            RaisedButton(
              child: Text(
                'Nova frase',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.green,
              onPressed: _geraNovaFrase,
            )
          ],
        ),
      ),
    );
  }
}
