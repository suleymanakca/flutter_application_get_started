import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});
  final double? size;
  final double _defalutSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(color: Colors.white, size: size ?? _defalutSize);
  }
}
