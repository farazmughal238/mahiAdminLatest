import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TabBarss/newDetails.dart';
class Boxes extends StatefulWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  _BoxesState createState() => _BoxesState();
}

class _BoxesState extends State<Boxes> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Responsive.isMobile(context)?Column(

      children: [
        buildContainer1(context, media),
        SizedBox(height: media.height*0.02,),
        buildContainer2(context, media),
        SizedBox(height: media.height*0.02,),
        buildContainer3(context, media),
        SizedBox(height: media.height*0.02,),
        buildContainer4(context, media),
      ],
    ):Row(

          children: [
            buildContainer1(context, media),
            SizedBox(width: media.width*0.02,),
            buildContainer2(context, media),
            SizedBox(width: media.width*0.02,),
            buildContainer3(context, media),
            SizedBox(width: media.width*0.02,),
            buildContainer4(context, media),
          ],
        ),

      ],
    );
  }

  Container buildContainer4(BuildContext context, Size media) {
    return Container(
            width: Responsive.isMobile(context)
                ? media.width * 0.95
                : media.width * 0.17,
            height: Responsive.isMobile(context)
                ? media.height * 0.2
                : media.height * 0.2,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/projetc.png"),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.02
                            : media.width * 0.01,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Projects (Trades)",
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Core",
                            style: GoogleFonts.openSans(
                                fontSize: 10,
                                color: Color(0xff6a6a6a)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.28
                            : media.width * 0.05,
                        height: media.height * 0.042,

                        child: RaisedButton(
                          onPressed: () {


                          },

                          child: Text(
                            "Added",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff00AC54
                          ),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.065
                            : media.width * 0.025,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.45
                            : media.width * 0.05,
                        height: media.height * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: cColor().blue,
                        ),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailTab()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "View",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff0063f7),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Container buildContainer3(BuildContext context, Size media) {
    return Container(
            width: Responsive.isMobile(context)
                ? media.width * 0.95
                : media.width * 0.17,
            height: Responsive.isMobile(context)
                ? media.height * 0.2
                : media.height * 0.2,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/car.png"),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.02
                            : media.width * 0.01,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vehicle Inspection\nChecklist",
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Checklists",
                            style: GoogleFonts.openSans(
                                fontSize: 10,
                                color: Color(0xff6a6a6a)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.28
                            : media.width * 0.05,
                        height: media.height * 0.042,

                        child: RaisedButton(
                          onPressed: () {},

                          child: Text(
                            "Added",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff00AC54
                          ),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.065
                            : media.width * 0.025,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.45
                            : media.width * 0.05,
                        height: media.height * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: cColor().blue,
                        ),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "View",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff0063f7),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Container buildContainer2(BuildContext context, Size media) {
    return Container(
            width: Responsive.isMobile(context)
                ? media.width * 0.95
                : media.width * 0.17,
            height: Responsive.isMobile(context)
                ? media.height * 0.2
                : media.height * 0.2,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/traffic.png"),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.02
                            : media.width * 0.01,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Report Hazard",
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Report & Notify",
                            style: GoogleFonts.openSans(
                                fontSize: 10,
                                color: Color(0xff6a6a6a)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.28
                            : media.width * 0.05,
                        height: media.height * 0.042,

                        child: RaisedButton(
                          onPressed: () {},

                          child: Text(
                            "Added",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff00AC54
                          ),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.065
                            : media.width * 0.025,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.45
                            : media.width * 0.05,
                        height: media.height * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: cColor().blue,
                        ),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "View",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff0063f7),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
  }

  Container buildContainer1(BuildContext context, Size media) {
    return Container(
            width: Responsive.isMobile(context)
                ? media.width * 0.95
                : media.width * 0.17,
            height: Responsive.isMobile(context)
                ? media.height * 0.2
                : media.height * 0.2,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/sign.png"),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.02
                            : media.width * 0.01,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign-in Register",
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Core",
                            style: GoogleFonts.openSans(
                                fontSize: 10,
                                color: Color(0xff6a6a6a)),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.28
                            : media.width * 0.05,
                        height: media.height * 0.042,

                        child: RaisedButton(
                          onPressed: () {},

                          child: Text(
                            "Added",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff00AC54
                          ),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.065
                            : media.width * 0.025,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.45
                            : media.width * 0.05,
                        height: media.height * 0.068,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: cColor().blue,
                        ),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "View",
                            style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 10,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                          color: Color(0xff0063f7),
                          textColor: Colors.white,
                          hoverColor: Colors.indigo[900],
                          highlightColor: Colors.indigo[900],
                          splashColor: Colors.indigo[900],
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
