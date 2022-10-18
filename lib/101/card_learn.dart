import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
              margin: ProjectMargins.cardMargin,
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Text('Ali')),
              )),
          Card(
              margin: ProjectMargins.cardMargin,
              //color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Text('Ali')),
              )),
          const _CustomCard(
              child: SizedBox(
            height: 100,
            width: 200,
            child: Center(child: Text('Ali')),
          ))
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: ProjectMargins.cardMargin,
        //color: Colors.white,
        child: child);
  }
}
