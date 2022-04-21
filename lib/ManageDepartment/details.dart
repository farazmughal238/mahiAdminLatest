import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
import '../SaveChanges.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: Responsive.isMobile(context) ? 20 : 200, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Department Name",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 12 : 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.42
                          : media.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cColor().lightblue,
                      ),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          contentPadding: EdgeInsets.only(top: 15, bottom: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: media.width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Department contact phone",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 12 : 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.40
                          : media.width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cColor().lightblue,
                      ),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          contentPadding: EdgeInsets.only(top: 15, bottom: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Department Location",
                    style: GoogleFonts.openSans(
                        fontSize: Responsive.isMobile(context) ? 12 : 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: Responsive.isMobile(context)
                      ? media.width * 0.85
                      : media.width * 0.73,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cColor().lightblue,
                  ),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Color(0xfff0f0f0))),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Color(0xfff0f0f0))),
                      contentPadding: EdgeInsets.only(top: 15, bottom: 10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: media.height * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "About",
                    style: GoogleFonts.openSans(
                        fontSize: Responsive.isMobile(context) ? 12 : 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: Responsive.isMobile(context)
                      ? media.width * 0.86
                      : media.width * 0.73,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cColor().lightblue,
                  ),
                  child: TextFormField(
                    maxLines: 6,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Color(0xfff0f0f0))),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Color(0xfff0f0f0))),
                      contentPadding: EdgeInsets.only(top: 15, bottom: 10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: media.height * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Select label color",
                    style: GoogleFonts.openSans(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      child: CircleAvatar(
                        radius: Responsive.isMobile(context) ? 25 : 28,
                        backgroundColor: Color(0xffB1FFDE),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: Responsive.isMobile(context) ? 25 : 28,
                      backgroundColor: Color(0xffFFE4F3),
                    ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: Responsive.isMobile(context) ? 25 : 28,
                      backgroundColor: Color(0xffDEE3FF),
                    ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: Responsive.isMobile(context) ? 25 : 28,
                      backgroundColor: Color(0xffFFF8DE),
                    ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: Responsive.isMobile(context) ? 25 : 28,
                      backgroundColor: Color(0xffFFBFBF),
                    ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: Responsive.isMobile(context) ? 25 : 28,
                      backgroundColor: Color(0xffAFE7FF),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: media.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Responsive.isMobile(context) ? 20 : 50),
              child: Row(
                mainAxisAlignment: Responsive.isMobile(context)
                    ? MainAxisAlignment.spaceEvenly
                    : MainAxisAlignment.end,
                children: [
                  Container(
                    width: Responsive.isMobile(context)
                        ? media.width * 0.41
                        : media.width * 0.15,
                    height: media.height * 0.058,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: cColor().blue)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 10 : 12,
                            letterSpacing: 1.0,
                            color: Color(0xff0063f7)),
                      ),
                      color: Colors.white,
                      textColor: Colors.white,
                    ),
                  ),
                  Responsive.isMobile(context)
                      ? SizedBox(
                          height: media.height * 0.01,
                        )
                      : SizedBox(
                          width: media.width * 0.05,
                        ),
                  Container(
                    width: Responsive.isMobile(context)
                        ? media.width * 0.41
                        : media.width * 0.15,
                    height: media.height * 0.058,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {

                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SaveChanges()));
                      },
                      child: Text(
                        "Save Changes",
                        style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 10 : 12,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
