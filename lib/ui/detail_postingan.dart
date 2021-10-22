import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/models/postmodel.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPostingan extends StatelessWidget {
  PostModel postingan;
  DetailPostingan({Key? key, required this.postingan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          child: postingan.image
                      ),
                      
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white70,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                            FavoriteButton(),
                          ],
                        ),
                      ),
                      Container(
                        width: 155,
                        padding: EdgeInsets.fromLTRB(50, 90, 1, 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            SizedBox(
                              height: 3,
                            ),
                            LinearProgressIndicator(
                              backgroundColor: Colors.white,
                              color: HexColor("#3B4254").withOpacity(0.6),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              postingan.nama,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              padding: EdgeInsets.fromLTRB(
                                  40, 210, 1, 1), //top 210 - 40
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Container(
                                      padding: const EdgeInsets.all(4.0),
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 0, 0, 5),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: Container(
                                        height: 5,
                                        width: 30,
                                        color: HexColor("29D890").withOpacity(0.8),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    postingan.komentar,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  0, 200, 25, 0), //top 200 - 30
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                margin: const EdgeInsets.all(15.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Text(
                                  postingan.nama,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'Oxygen',
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                   
                  
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.calendar_today),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                postingan.tanggal,
                                
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.access_time),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                postingan.tanggal
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.monetization_on),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                "Rp.700000",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Divider(
                      color: HexColor("#3B4254"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      postingan.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0, fontFamily: 'Oxygen'),
                    ),
                  ),

                  // Container(
                  //     height: 150,
                  //     child: ListView(
                  //       scrollDirection: Axis.horizontal,
                  //       children: course.imageUrls.map((url) {
                  //         return Padding(
                  //           padding: EdgeInsets.all(4.0),
                  //           child: ClipRRect(
                  //             borderRadius: BorderRadius.circular(9),
                  //             child: Image.network(
                  //               url,
                  //             ),
                  //           ),
                  //         );
                  //       }).toList(),
                  //     ))
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            isFavorite = isFavorite;
          });
        });
  }
}
