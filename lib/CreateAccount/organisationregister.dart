import 'package:apisd/CreateAccount/sidecontainer.dart';
import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create account.dart';

class Orgreg extends StatefulWidget {
  const Orgreg({Key? key}) : super(key: key);

  @override
  _OrgregState createState() => _OrgregState();
}

class _OrgregState extends State<Orgreg> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Sidecontainer(),
      drawerEnableOpenDragGesture: false,
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Responsive.isMobile(context) ? Container() : Sidecontainer(),
            Column(
              children: [
                Container(
                  height: media.height * 1.0,
                  width: Responsive.isMobile(context)
                      ? media.width * 1.0
                      : media.width * 0.6,
                  child: Padding(
                    padding: Responsive.isMobile(context)
                        ? const EdgeInsets.only(left: 15)
                        : const EdgeInsets.only(left: 70),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Start a 30-day free trial",
                              style: GoogleFonts.openSans(
                                  fontSize:
                                      Responsive.isMobile(context) ? 28 : 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: Responsive.isMobile(context)
                                  ? media.height * 0.03
                                  : media.height * 0.03,
                            ),
                            Responsive.isMobile(context)? Text(
                              "Register your organisation first.Then add and manage your people from youradmin console",
                              style: GoogleFonts.openSans(
                                  fontSize:
                                  Responsive.isMobile(context) ? 11 : 15),
                            ):Text(
                              "Register your organisation first.Then add and manage your people from your\n admin console",
                              style: GoogleFonts.openSans(
                                  fontSize:
                                      Responsive.isMobile(context) ? 11 : 15),
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
                                      hintText: "First Name",
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: Responsive.isMobile(context)
                                              ? 11
                                              : 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
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
                                      hintText: "Contact Phone",
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: Responsive.isMobile(context)
                                              ? 11
                                              : 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
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
                                      hintText: "Contact Phone",
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: Responsive.isMobile(context)
                                              ? 11
                                              : 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
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
                                      hintText: "Organisation Name",
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: Responsive.isMobile(context)
                                              ? 11
                                              : 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
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
                            Column(
                              children: [
                                Container(
                                  width: Responsive.isMobile(context)
                                      ? media.width * 0.93
                                      : media.width * 0.495,
                                  height: media.height * 0.06,
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: cColor().grey,
                                      hintText: "Country",
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: Responsive.isMobile(context)
                                              ? 11
                                              : 12),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Color(0xfff0f0f0))),
                                      contentPadding: EdgeInsets.only(
                                          top: 15, bottom: 10, left: 10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: media.height * 0.035,
                                ),
                                Container(
                                  width: Responsive.isMobile(context)
                                      ? media.width * 0.45
                                      : media.width * 0.23,
                                  height: media.height * 0.050,
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Createaccount()));
                                    },
                                    child: Text(
                                      "Next",
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
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
