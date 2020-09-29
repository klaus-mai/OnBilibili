import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'pages/HomePage.dart';

class SplshPage extends StatefulWidget {
  @override
  SplshState createState() => new SplshState();
}

class SplshState extends State<SplshPage> {
  @override
  Widget build(BuildContext context) {
    // return new Material(
    //   color: new Color.fromARGB(255, 229, 102, 152),
    //   child: new Padding(
    //     padding: const EdgeInsets.only(
    //       top: 150.0,
    //     ),
    //     child: new Column(
    //       children: <Widget>[
    //         new Text(
    //           "Hello",
    //           style: new TextStyle(
    //               color: Colors.white,
    //               fontSize: 50.0,
    //               fontWeight: FontWeight.bold),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Container(
      child: Image.asset(
        "images/splashpage.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Timer timer;

  @override
  void initState() {
    super.initState();
    timer = new Timer(new Duration(seconds: 3), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(
                builder: (BuildContext context) => new HomePage()),
            ( //跳转到主页
                    Route route) =>
                route == null);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
