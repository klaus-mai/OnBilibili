import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> homescaffoldkey;
  final double height;
  const HomeAppBar({this.height: 46.0, this.homescaffoldkey});
  Size get preferredSize => Size.fromHeight(height);
  @override
  _HomeAppBarState createState() =>
      _HomeAppBarState(homescaffoldkey: homescaffoldkey);
}

class _HomeAppBarState extends State<HomeAppBar> {
  _HomeAppBarState({this.homescaffoldkey});
  final GlobalKey<ScaffoldState> homescaffoldkey;
  void _opendrawer() {
    homescaffoldkey.currentState.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: GestureDetector(
        child: Row(
          children: <Widget>[
            Icon(Icons.menu),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                  border: Border.all(width: 1, color: Colors.white),
                  image: DecorationImage(
                      image: AssetImage("images/bill_default_avatar.png"))),
            ),
          ],
        ),
        onTap: () {
          _opendrawer();
        },
      ),
      title: GestureDetector(
        child: Opacity(
          opacity: 0.15,
          child: Container(
            height: 30,
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
