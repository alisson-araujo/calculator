import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Display(memory.value),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
