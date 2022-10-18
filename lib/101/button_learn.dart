import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }

              return Colors.red;
            })),
            child: Text('TextButton',
                style: Theme.of(context).textTheme.subtitle1)),
        const ElevatedButton(onPressed: null, child: Text('ElevatedButton')),
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
        FloatingActionButton(
          onPressed: () {
            // servise istek at
            // sayfanın rengini düzenle
          },
          child: const Icon(Icons.add),
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {},
            child: const Text('OutlinedButton')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo),
            label: const Text('OutlinedButton with icon')),
        InkWell(onTap: () {}, child: const Text('InkWell')),
        Container(
          height: 200,
          color: Colors.lightGreen,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, right: 40, left: 40),
              child: Text('Place Bid',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.white)),
            ))
      ]),
    );
  }
}
