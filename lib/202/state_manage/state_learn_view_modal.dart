import 'package:flutter/material.dart';

import 'state_manage_learn_view.dart';

abstract class StateLearnViewModal extends State<StateManageLearnView> {
  @override
  void initState() {
    super.initState();
  }

  //Text('data', style: context.textTheme().headline1)
  late AnimationController controller;
  bool isVisible = false;
  bool isOpacity = false;
  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
  
}
