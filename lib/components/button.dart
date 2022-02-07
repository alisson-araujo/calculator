import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const padrao = Color.fromRGBO(112, 112, 112, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    Key? key,
    required this.text,
    this.big = false,
    this.color = padrao,
    required this.cb,
  }) : super(key: key);

  const Button.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = padrao,
    required this.cb,
  }) : super(key: key);

  const Button.op({
    Key? key,
    required this.text,
    this.big = false,
    this.color = operation,
    required this.cb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
