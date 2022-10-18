import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            color: Theme.of(context).backgroundColor,
            size: iconSize.iconSmall,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.message_outlined,
            color: iconColor.mandy,
            size: iconSize.iconSmall,
          ),
        )
      ]),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color mandy = Color(0xffED616B);
}
