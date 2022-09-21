import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _jumlahBuku = 1;
  String _genap = "Genap";
  Color _color = Colors.green;
  Color _bg = Colors.yellow;

  void _incrementCounter() {
    setState(() {
      _jumlahBuku++;
      if((_jumlahBuku % 2) == 0){
        _genap = "Angka Genap";
        _color = Colors.blue;
        _bg = Colors.red;
      } else {
        _genap = "Angka Ganjil";
        _color = Colors.purple;
        _bg = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),       
      ),
      body: Container(
        color: _bg,
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Buku '+_genap+' yang dibaca : $_jumlahBuku',
              style: TextStyle( fontSize: 40 ),
              textAlign: TextAlign.center,
              
            ),
            
          ],
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        backgroundColor: _color,
        child: Icon(Icons.add),
      ),
    );
  }
}