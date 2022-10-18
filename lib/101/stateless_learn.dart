import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text1 = "veli1";
  final String text2 = "veli2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TitleTextWidget(text: text1),
        _emptyBox(),
        TitleTextWidget(text: text2),
        //TitleTextWidget(text: "ali3"),
        //TitleTextWidget(text: "ali4"),
        const _CustomContainer(),
        _emptyBox()
      ]),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
