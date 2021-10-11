import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/login.dart';
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
        backgroundColor: Colors.white,
        // HexColor("#D2D2D2"),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stack(
            //   children: [
            //     Container(
            //       padding: EdgeInsets.fromLTRB(24, 48, 0, 0),
            //       child: Text(
            //         'PanenKuy',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //             fontFamily: "Montserrat",
            //             fontWeight: FontWeight.w400),
            //       ),
            //       height: 102,
            //       width: MediaQuery.of(context).size.width,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight,
            //             colors: [HexColor("61D2C4"), HexColor("29D890")]),
            //       ),
            //     ),
            //     Container(
            //       margin: EdgeInsets.fromLTRB(23, 82, 0, 0),
            //       height: 35,
            //       width: 230,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(90)),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           Icon(
            //             Icons.search,
            //             color: HexColor("#D2D2D2"),
            //             size: 20,
            //           ),
            //           Container(
            //             height: 28,
            //             width: 165,
            //             child: TextFormField(
            //                 style: TextStyle(
            //                     color: HexColor("#D2D2D2"),
            //                     fontFamily: 'Montserrat'),
            //                 controller: searchController,
            //                 autocorrect: true,
            //                 decoration: InputDecoration(
            //                   border: InputBorder.none,
            //                   focusedBorder: InputBorder.none,
            //                   enabledBorder: InputBorder.none,
            //                   errorBorder: InputBorder.none,
            //                   disabledBorder: InputBorder.none,
            //                   hintText: 'Cari Postingan',
            //                   hintStyle: TextStyle(
            //                       fontSize: 14,
            //                       color: HexColor("#D2D2D2"),
            //                       fontFamily: 'Montserrat'),
            //                   focusColor: HexColor("#D2D2D2"),
            //                   fillColor: HexColor("#D2D2D2"),
            //                 )),
            //           )
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [HexColor("61D2C4"), HexColor("29D890")]),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        // await signOut();
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Text(
                        'PanenKuy',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: Icon(
                          Icons.add_box_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 20, 0),
                        child: Container(
                          width: 36,
                          height: 36,
                          child: Stack(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.77, -0.86),
                                child: Container(
                                  width: 11,
                                  height: 11,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFF0000),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 579,
              child: Postingan(),
            )
          ],
        ),
      ),
    );
  }
}
