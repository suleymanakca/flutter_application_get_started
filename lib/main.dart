import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '101/color_learn.dart';
import '101/statefull_life_cycle_learn.dart';

void main() {
  runApp(const MyApp()); // Ali Dayi
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.red),
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          errorColor: ColorsItems.dingley,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            elevation: 0,
          )),
      home: const StatefullLifeCycleLearn(
        message: "Velibb",
      ),
    );
  }
}
