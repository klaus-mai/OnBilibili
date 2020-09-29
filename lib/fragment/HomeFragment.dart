import 'package:flutter/material.dart';

void main() => runApp(new HomeFragment());

class HomeFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeFragmentState();
  }
}

class HomeFragmentState extends State<HomeFragment> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
          centerTitle: true,
        ),
      ),
    );
  }
}
