import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Alco"),
          ),
          body: ListOfAlcoholCounters(),
        ));
  }
}

class ListOfAlcoholCounters extends StatelessWidget {
  const ListOfAlcoholCounters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: ButtonsWithCounter(alcoName: 'Piwo'),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: ButtonsWithCounter(alcoName: 'Wino',),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: ButtonsWithCounter(alcoName: 'Vodka'),
        ),
      ],
    );
  }
}

class ButtonsWithCounter extends StatefulWidget {
  const ButtonsWithCounter({Key? key, required this.alcoName}) : super(key: key);
  final String alcoName;
  @override
  State<ButtonsWithCounter> createState() => _ButtonsWithCounterState();
}

class _ButtonsWithCounterState extends State<ButtonsWithCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        RawMaterialButton(
          onPressed: _decreaseCounter,
          elevation: 2.0,
          fillColor: Colors.white,
          padding: EdgeInsets.all(15.0),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.remove,
            size: 15.0,
          ),
        ),
        Text( "${widget.alcoName} $_counter"),
        RawMaterialButton(
          onPressed: _incrementCounter,
          elevation: 2.0,
          fillColor: Colors.white,
          padding: EdgeInsets.all(15.0),
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            size: 15.0,
          ),
        )
      ],
    );
  }
}
