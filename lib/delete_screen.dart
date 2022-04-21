import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rem extends StatefulWidget {
  const Rem({Key? key}) : super(key: key);

  @override
  _RemState createState() => _RemState();
}

class _RemState extends State<Rem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff0063f7),
        child: Center(
            child: Text(
          "You have been signed out",
          style: GoogleFonts.openSans(color: Colors.white, fontSize: 22),
        )),
      ),
    );
  }
}
