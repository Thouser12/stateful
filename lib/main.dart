import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String msg = '';

  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Exemplo'),
        ),
        body: Center(
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Você clicou $contador vezes'),
                Text(msg),
              ],
            )
         
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(contador < 10){
              contador++;
              }else{
                msg = 'Você atingiu o limite';
              }
            });
          },
          child: Icon(Icons.add),
        ),
      )
    );
  }
}