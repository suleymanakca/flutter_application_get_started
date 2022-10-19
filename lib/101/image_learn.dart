import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 300,
              width: 200,
              child:
                  Image.asset(ImageItems().appleWithBook, fit: BoxFit.cover)),
          SizedBox(
              height: 300,
              width: 200,
              child: JpgImage(name: ImageItems().appleBookWithoutPath))
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/apple.jpg";
  final String appleBook = "assets/jpg/ic_apple_with_school.jpg";
  final String appleBookWithoutPath = "ic_apple_with_school";
}

class JpgImage extends StatelessWidget {
  const JpgImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/jpg/$name.jpg';
}
