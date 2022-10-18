import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Text(
              'data',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color dingley = Color(0xff5C7F48);
  static const Color parchment = Color.fromRGBO(241, 237, 213, 1);
}
