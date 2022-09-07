import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Fibonacci'),
    );
  }
}

class Moto{
  late String marque;
  late int id;
}

List<Moto> Listemoto =[];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          children: fibonacci(400).map((e) =>  Container( padding: EdgeInsets.all(40) ,margin: EdgeInsets.only(top : 10), decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(15)), child: Text(e.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 30,color: Colors.blueAccent),),)).toList(),
            ),//fibonacci(40).map((e) =>  Text(e.toString())).toList()

        ),
      );
  }
  List<int> fibonacci(int quantite){
    List<int> list = [];
    int premierevaleur=0;
    int nombre=1;
    list.add(1);
    for(int a=0;a<quantite;a++){
    list.add(premierevaleur+nombre);
    int temp=premierevaleur;
    premierevaleur=nombre;
    nombre=temp+nombre;
  }
    return list;
  }
  @override
  void initState() {
    Listemoto = [];
    Moto moto = Moto();
    moto.marque="Kawasaki";
    Listemoto.add(moto);
    Moto moto1 = Moto();
    moto1.marque="Honda";
    Listemoto.add(moto1);
    setState(() {});

  }
}
