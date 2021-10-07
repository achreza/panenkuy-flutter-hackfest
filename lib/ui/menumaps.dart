import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/map_screen.dart';

class MenuPeta extends StatefulWidget {
  const MenuPeta({Key? key}) : super(key: key);

  @override
  _MenuPetaState createState() => _MenuPetaState();
}

class _MenuPetaState extends State<MenuPeta> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MapScreen(),
      ),
    );
  }
}
