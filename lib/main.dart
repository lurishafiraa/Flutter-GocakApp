import 'package:flutter/material.dart';
import 'package:gocakapp/constant.dart';
import 'package:gocakapp/launcher/launcher_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gocak',
      theme: ThemeData(
        primaryColor: GocakPalette.blue,
        fontFamily: 'OpenSans',
      ),
      home: LauncherPage(),
    );
  }
}
