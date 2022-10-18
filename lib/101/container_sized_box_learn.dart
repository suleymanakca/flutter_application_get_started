import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Text('aa' * 200),
            ),
            const SizedBox.shrink(),
            SizedBox.square(
              dimension: 50,
              child: Text('b' * 50),
            ),
            Container(
              //width: 50,
              height: 50,
              constraints: const BoxConstraints(maxWidth: 200, minWidth: 50),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: ProjectUtility.boxDecoration,
              child: Text('aa' * 100),
            )
          ],
        ));
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      //color: Colors.red,
      //shape: BoxShape.circle,
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(9, 8), blurRadius: 9)
      ],
      border: Border.all(width: 2, color: Colors.black26));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            //color: Colors.red,
            //shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(9, 8), blurRadius: 9)
            ],
            border: Border.all(width: 2, color: Colors.black26));
}
