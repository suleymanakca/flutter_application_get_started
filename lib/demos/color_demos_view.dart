// bir ekran olacak
// ekranda 3 buton ve butonlara basınca renk değişimi olacak
// secili olan button selected icon olsun

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorsDemos extends StatefulWidget {
  const ColorsDemos({super.key, required this.initalColor});
  final Color? initalColor;
  @override
  State<ColorsDemos> createState() => _ColorsDemosState();
}

class _ColorsDemosState extends State<ColorsDemos> {
  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initalColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorsDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    if (widget.initalColor != _backgroundColor && widget.initalColor != null) {
      changeBackgroundColor(widget.initalColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.yellow,
            ),
            label: 'Yellow'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: 'Blue')
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
