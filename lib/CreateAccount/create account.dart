import 'package:apisd/CreateAccount/sidecontainer.dart';
import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'checkyouemail.dart';


class Createaccount extends StatefulWidget {
  const Createaccount({Key? key}) : super(key: key);

  @override
  _CreateaccountState createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidecontainer(),
      drawerEnableOpenDragGesture: false,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Responsive.isMobile(context) ? Container() : Sidecontainer(),
          Container(
            height: media.height * 1.0,
            width: Responsive.isMobile(context)
                ? media.width * 1.0
                : media.width * 0.7,
            child: Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context)?15:80),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Responsive.isMobile(context)
                          ? Center(
                            child: Image.asset(
                        "assets/mahicolor.png",
                        height: 170,
                        width: 170,
                      ),
                          )
                          : Container(),
                      Text(
                        "Almost there...",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 28 : 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: Responsive.isMobile(context)
                            ? media.height * 0.03
                            : media.height * 0.03,
                      ),
                      Text(
                        "Create your account to get started.",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 14 : 15),
                      ),
                      SizedBox(
                        height: Responsive.isMobile(context)
                            ? media.height * 0.03
                            : media.height * 0.05,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.23,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: cColor().grey,
                                hintText: "Email",
                                hintStyle: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context)
                                        ? 11
                                        : 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(
                                    top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: media.width * 0.035,
                          ),
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.23,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: cColor().grey,
                                hintText: "Confirm Email Address",
                                hintStyle: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context)
                                        ? 11
                                        : 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(
                                    top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.035,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.23,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: cColor().grey,
                                hintText: "Password",
                                hintStyle: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context)
                                        ? 11
                                        : 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(
                                    top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: media.width * 0.035,
                          ),
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.23,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: cColor().grey,
                                hintText: "Confirm Password",
                                hintStyle: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context)
                                        ? 11
                                        : 12),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                    borderSide:
                                    BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(
                                    top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.035,
                      ),
                      Row(
                        children: [
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.23,
                            height: Responsive.isMobile(context)
                                ?media.height * 0.062 :media.height * 0.052,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text(
                                "Back",
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
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
                          SizedBox(
                            width: media.width * 0.035,
                          ),
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.23,
                            height: Responsive.isMobile(context)
                                ?media.height * 0.062 :media.height * 0.052,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Checkemail()));
                              },
                              child: Text(
                                "Register",
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
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
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
