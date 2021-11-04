import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var leftDiceNumber = 4;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(                 //$ sign to call variable's value
                  child: Image.asset('images/dice$leftDiceNumber.png'), onPressed: () {})), //() for widget(?),
          Expanded(                              //string interpolation        //{} for function ex. call API
              child: TextButton(
                  child: Image.asset('images/dice6.png'), onPressed: () {}))
        ],
      ),
    );
  }
}
