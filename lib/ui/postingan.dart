import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/models/postmodel.dart';
import 'package:flutter_panenkuy/ui/login.dart';
import 'package:hexcolor/hexcolor.dart';

class Postingan extends StatefulWidget {
  const Postingan({Key? key}) : super(key: key);

  @override
  _PostinganState createState() => _PostinganState();
}

class _PostinganState extends State<Postingan> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: postList.map((postingan) {
        // ignore: deprecated_member_use
        return FlatButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return LoginPage();
              // }));
            },
            child: Container(
              child: Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 12, top: 7),
                            width: 25,
                            height: 25,
                            child: CircleAvatar(
                              child: Icon(Icons.person),
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 7),
                          height: 25,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                postingan.nama,
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                              Text(
                                postingan.tanggal,
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 9),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.grey,
                      width: 350,
                      height: 220,
                      child: postingan.image,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 120,
                            child: Row(
                              children: [
                                Container(
                                  width: 35,
                                  height: 30,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 25,
                                        color: HexColor("#2DDA93"),
                                      )),
                                ),
                                Container(
                                  width: 35,
                                  height: 30,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.comment_outlined,
                                        size: 25,
                                        color: HexColor("#2DDA93"),
                                      )),
                                ),
                                Container(
                                  width: 35,
                                  height: 30,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.share,
                                        size: 25,
                                        color: HexColor("#2DDA93"),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 30,
                            height: 30,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_border_sharp,
                                  size: 25,
                                  color: HexColor("#2DDA93"),
                                )),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              postingan.nama,
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              postingan.description,
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 6, 6, 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tampilkan " + postingan.komentar + " komentar",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w300,
                                fontSize: 11),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      }).toList(),
    );
  }
}
