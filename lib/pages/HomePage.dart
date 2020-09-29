import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/MyAppBar/HomeAppBar.Dart';
import 'package:flutter_app/icons/bilibili_icons.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageStates();
}

class _MyHomePageStates extends State<HomePage> {
  static final GlobalKey<State> homescaffoldkey = new GlobalKey<State>();
  DateTime _lastClick; //最后一次按返回
  int _selectedIndex = 0; //页面

  final _widgetOptionsItem = [
    HomePage(),
    //ChannelPage(),
    // DynamicPage(),
    //MallPage()
  ];
  void initState() {
    super.initState();
    print(_lastClick);
  }

  final _widgetOptionsAppBar = {
    HomeAppBar(homescaffoldkey: homescaffoldkey),
    //channelAppBar(),
    //DynamicsAppBar(),
    //MallAppBar()
  };
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _checkDobleClick,
        child: Scaffold(
          key: homescaffoldkey,
          appBar: _widgetOptionsAppBar.elementAt(_selectedIndex),
          body: Center(
            child: IndexedStack(
                index: _selectedIndex, children: _widgetOptionsItem),
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(IconData(0xe661, fontFamily: "Bilibili")),
                    activeIcon: Icon(IconData(0xe662, fontFamily: "Bilibili")),
                    // ignore: deprecated_member_use
                    title: Text("首页")),
                BottomNavigationBarItem(
                    icon: Icon(IconData(0xe664, fontFamily: "Bilibili")),
                    activeIcon: Icon(IconData(0xe663, fontFamily: "Bilibili")),
                    // ignore: deprecated_member_use
                    title: Text("频道")),
                BottomNavigationBarItem(
                    icon: Icon(IconData(0xe666, fontFamily: "Bilibili")),
                    activeIcon: Icon(IconData(0xe665, fontFamily: "Bilibili")),
                    // ignore: deprecated_member_use
                    title: Text("动态")),
                // ignore: deprecated_member_use
                BottomNavigationBarItem(
                    // ignore: deprecated_member_use
                    icon: Icon(BIcon.shop),
                    // ignore: deprecated_member_use
                    title: Text("会员购")),
              ]),
        ));
  }

  //void _onItemTapped(int index) {
  //setState(() {
  //_selectedIndex = index;
  // });
  // }

  // ignore: slash_for_doc_comments
  /**
   * 判断是否在规定时间内两次按下退出应用
   */
  Future<bool> _checkDobleClick() {
    print("_lastclick $_lastClick");
    print("new ${DateTime.now()}");
    if (_lastClick == null ||
        DateTime.now().difference(_lastClick) > Duration(seconds: 1)) {
      _lastClick = DateTime.now();
      Fluttertoast.showToast(msg: "再按一次退出");
      return Future.value(false);
    }
    return Future.value(true);
  }
}
