import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/login.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Montserrat"), home: LoginPage());
  }
}
