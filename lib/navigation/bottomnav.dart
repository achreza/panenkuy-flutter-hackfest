

import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/dashboard.dart';
import 'package:flutter_panenkuy/ui/login.dart';
import 'package:flutter_panenkuy/ui/menumaps.dart';
import 'package:flutter_panenkuy/ui/postingan.dart';
import 'package:flutter_panenkuy/ui/profile_page.dart';


import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

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


    //Iki list Page e, nek pigin nambah tinggal Manggil
    //tapi kudu nambah icon neh ndek widget e
  static List<Widget> Screens = [
    DashboardMenu(),
    MenuPeta(),
    ProfilePage(),
  ];


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
            color: HexColor("#ffffff"),
          ),
          Icon(
            Icons.add,
            size: 50,
            color: HexColor("#4790D4"),
          ),
          Icon(
            Icons.person,
            size: 30,
            color: HexColor("#ffffff"),
          ),
        ],
        // HexColor("#3B4254")
        color: HexColor("#2DDA93"),
        buttonBackgroundColor: HexColor("#2DDA93"),
        backgroundColor: HexColor("#ffffff"),
        animationCurve: Curves.easeInCubic,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
    );
  }
}
