/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has four [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.shifting], and
// the [currentIndex] is set to index 0. The selected item is amber in color.
// With each [BottomNavigationBarItem] widget, backgroundColor property is
// also defined, which changes the background color of [BottomNavigationBar],
// when that item is selected. The `_onItemTapped` function changes the
// selected item's index and displays a corresponding message in the center of
// the [Scaffold].

import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/dashboard.dart';
import 'package:flutter_panenkuy/ui/login.dart';
import 'package:flutter_panenkuy/ui/menumaps.dart';
import 'package:flutter_panenkuy/ui/profile_page.dart';
// import 'package:flutter_navigation/Screens/business.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

/// This is the main application widget.
class BottomNav extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  // User Logout Function.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyColor {
  const _MyColor(this.color, this.name);

  final Color color;
  final String name;
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;
  // ignore: unused_field
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> Screens = [
    DashboardMenu(),
    MenuPeta(),
    ProfilePage(),
  ];

  // static List<_MyColor> myBgColors = [
  //   const _MyColor(Colors.red, 'Red'),
  //   const _MyColor(Colors.blue, 'Light Blue'),
  //   const _MyColor(Colors.purple, 'Purple'),
  //   const _MyColor(Colors.pink, 'Pink'),
  //   const _MyColor(Colors.blue, 'Blue'),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  logout(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: HexColor("#2DDA93"),
          ),
          Icon(
            Icons.add,
            size: 50,
            color: HexColor("#48A2F5"),
          ),
          Icon(
            Icons.person,
            size: 30,
            color: HexColor("#2DDA93"),
          ),
        ],
        // HexColor("#3B4254")
        color: Colors.white,
        buttonBackgroundColor: HexColor("#2DDA93"),
        backgroundColor: HexColor("#D2D2D2"),
        animationCurve: Curves.easeInCubic,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
    );
  }
}
