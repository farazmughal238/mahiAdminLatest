import 'package:apisd/CreateAccount/sidecontainer.dart';
import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';


class Checkemail extends StatefulWidget {
  const Checkemail({Key? key}) : super(key: key);

  @override
  _CheckemailState createState() => _CheckemailState();
}

class _CheckemailState extends State<Checkemail> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidecontainer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Responsive.isMobile(context) ? Container() : Sidecontainer(),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Responsive.isMobile(context) ? 29 : 60,
                vertical: Responsive.isMobile(context) ? 200 : 170),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Check your email",
                  style: GoogleFonts.openSans(
                      fontSize: Responsive.isMobile(context) ? 28 : 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: media.height * 0.03,
                ),
                Responsive.isMobile(context)? Text(
                  "A confirmation link has been sent to your \nregistered  email."
                      "Please click on the \nlink and verify your account to login.",
                  style: GoogleFonts.openSans(
                    fontSize: Responsive.isMobile(context) ? 16 : 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ):Text(
                  "A confirmation link has been sent to your registered  email."
                  "Please click on the link \nand verify your account to login.",
                  style: GoogleFonts.openSans(
                    fontSize: Responsive.isMobile(context) ? 16 : 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: media.height * 0.03,
                ),
                Container(
                  width: Responsive.isMobile(context)
                      ? media.width * 0.45
                      : media.width * 0.21,
                  height: media.height * 0.052,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Go to login page",
                      style: GoogleFonts.openSans(
                        fontSize: Responsive.isMobile(context) ? 12 : 14,
                        letterSpacing: 1.0,
                      ),
                    ),
                    color: Color(0XFF0063F7),
                    textColor: Colors.white,
                    hoverColor: Colors.indigo[900],
                    highlightColor: Colors.indigo[900],
                    splashColor: Colors.indigo[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
