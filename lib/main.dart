import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'dados_contador.dart';

final dadosContador = DadosContador();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toque para rolar os dados!',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
		// primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.green,
      ),
      home: const Dados(),
    );
  }
}

class Dados extends StatelessWidget {
  const Dados();

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Observer(
                    builder: (_) =>
                      Image.asset('images/face${dadosContador.esquerda}.png'),
                  ),
                  onPressed: dadosContador.rolar,
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Observer(
                    builder: (_) =>
                      Image.asset('images/face${dadosContador.direita}.png'),
                  ),
                  onPressed: dadosContador.rolar,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Observer(
              builder: (_) => Text(
                'Total ${dadosContador.total}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Verdana'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
