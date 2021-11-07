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

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  var rightDiceNumber = 6;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {//{} for function ex. call API
                    leftDiceNumber = 1;
                    rightDiceNumber = 3;
                  });
                },                  //$ sign to call variable's value (string interpolation)
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(
              child: TextButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {setState(() {
                    leftDiceNumber = 3;
                    rightDiceNumber = 5;
                  });}))
        ],
      ),
    );
  }
}
