import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/navigation/bottomnav.dart';
import 'package:flutter_panenkuy/ui/map_screen.dart';
import 'package:flutter_panenkuy/ui/menumaps.dart';
import 'package:flutter_panenkuy/ui/register.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool visible = false;
  bool isChecked = false;

  // Getting value from TextField widget.
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  bool _obscureText = true;

  late String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("FBFDFF"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 68, 0, 0),
                child: Text(
                  'Selamat Datang',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Montserrat"),
                ),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [HexColor("61D2C4"), HexColor("29D890")]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 34),
            child: Text(
              'Silahkan Login Terlebih Dahulu',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                  color: HexColor("495566")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34, top: 50),
            child: Container(
                width: 300,
                child: TextFormField(
                  style:
                      TextStyle(color: Colors.green, fontFamily: 'Montserrat'),
                  validator: (val) =>
                      val!.length < 6 ? 'Username too short.' : null,
                  controller: usernameController,
                  autocorrect: true,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Username',
                      hintStyle: TextStyle(
                          color: Colors.green, fontFamily: 'Montserrat'),
                      focusColor: Colors.white,
                      fillColor: Colors.white),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34, top: 20),
            child: Stack(
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.green, fontFamily: 'Montserrat'),
                    validator: (val) =>
                        val!.length < 6 ? 'Password too short.' : null,
                    controller: passwordController,
                    autocorrect: true,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        hintText: 'Masukkan Password',
                        hintStyle: TextStyle(
                            color: Colors.green, fontFamily: 'Montserrat')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Container(
                      width: 70,
                      child: new FlatButton(
                        onPressed: _toggle,
                        child: new Text(_obscureText ? "Show" : "Hide",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.green,
                            )),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 23, right: 23, top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Lupa Password?'),
                  textColor: HexColor('#31A559'),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 320,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    gradient: LinearGradient(
                        colors: [HexColor("61D2C4"), HexColor("29D890")])),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNav()),
                    );
                  },
                  child: Text(
                    'LOGIN',
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: Text(
                'Belum Punya Akun? Daftar',
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  color: HexColor('#31A559'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
