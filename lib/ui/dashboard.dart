import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/postingan.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardMenu extends StatefulWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  _DashboardMenuState createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor("#D2D2D2"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(24, 48, 0, 0),
                  child: Text(
                    'PanenKuy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400),
                  ),
                  height: 102,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [HexColor("61D2C4"), HexColor("29D890")]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(23, 82, 0, 0),
                  height: 35,
                  width: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(90)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.search,
                        color: HexColor("#D2D2D2"),
                        size: 20,
                      ),
                      Container(
                        height: 28,
                        width: 165,
                        child: TextFormField(
                            style: TextStyle(
                                color: HexColor("#D2D2D2"),
                                fontFamily: 'Montserrat'),
                            controller: searchController,
                            autocorrect: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: 'Cari Postingan',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: HexColor("#D2D2D2"),
                                  fontFamily: 'Montserrat'),
                              focusColor: HexColor("#D2D2D2"),
                              fillColor: HexColor("#D2D2D2"),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 3, 5, 5),
              width: MediaQuery.of(context).size.width,
              child: Postingan(),
            )
          ],
        ),
      ),
    );
  }
}
