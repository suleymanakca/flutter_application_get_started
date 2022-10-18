import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Samples'),
      ),
      body: const Text('Hello'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                    color: Colors.amber,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomSheet: BottomSheet(
        builder: (context) {
          return const Text('a');
        },
        onClosing: () {},
      ),
      bottomNavigationBar: Container(
        //width: 200,
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'b')
        ]),
      ),
    );
  }
}
