import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade700,
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          title: Text(
            'DicePage',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void changediceimage() {
    setState(() {
      leftdicepage = Random().nextInt(6) + 1;
      rightdicepage = Random().nextInt(6) + 1;
    });
  }

  int leftdicepage = 1;
  int rightdicepage = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changediceimage();
                },
                child: Image.asset('images/dice $leftdicepage.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  changediceimage();
                },
                child: Image.asset('images/dice $rightdicepage.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
