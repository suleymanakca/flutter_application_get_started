import 'package:flutter/material.dart';
import 'package:flutter_application_get_started/202/theme/light_theme.dart';
import '202/sheet_learn.dart';

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
      theme: LightTheme().theme,
      // ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.white,
      //       unselectedLabelColor: Colors.red,
      //       indicatorSize: TabBarIndicatorSize.label,
      //     ),
      //     bottomAppBarTheme:
      //         const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //     progressIndicatorTheme:
      //         const ProgressIndicatorThemeData(color: Colors.red),
      //     listTileTheme:
      //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     cardTheme: CardTheme(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20))),
      //     errorColor: ColorsItems.dingley,
      //     textSelectionTheme:
      //         const TextSelectionThemeData(selectionColor: Colors.red),
      //     inputDecorationTheme: const InputDecorationTheme(
      //         filled: true,
      //         fillColor: Colors.white,
      //         iconColor: Colors.red,
      //         border: OutlineInputBorder(),
      //         labelStyle: TextStyle(color: Colors.amber),
      //         floatingLabelStyle: TextStyle(
      //             color: Colors.red,
      //             fontSize: 24,
      //             fontWeight: FontWeight.w600)),
      //     textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
      //     appBarTheme: const AppBarTheme(
      //       centerTitle: true,
      //       backgroundColor: Colors.transparent,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       elevation: 0,
      //     )),
      home: const SheetLearn(),
    );
  }
}
