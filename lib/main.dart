import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/SplshPage.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(new MaterialApp(
      title: "启动页",
      theme: new ThemeData(
        // primaryIconTheme: const IconThemeData(color: Colors.white),
        // brightness: Brightness.light,
        // primaryColor: new Color.fromARGB(255, 229, 102, 152),
        // accentColor: Colors.cyan[300],
        primarySwatch: Colors.grey,
        primaryColor: Colors.pink[300],
      ),
      home: new SplshPage()));
}
