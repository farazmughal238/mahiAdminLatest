import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
class UserD extends StatefulWidget {
  const UserD({Key? key}) : super(key: key);

  @override
  _UserDState createState() => _UserDState();
}

class _UserDState extends State<UserD> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: Responsive.isMobile(context)? 15:80,top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First Name",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor:cColor().grey,
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
                  width: media.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Last Name",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: cColor().grey,
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
              ],
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job title",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: cColor().grey,
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
                  width: media.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: cColor().grey,
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
              ],
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Main Contact",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: cColor().grey,
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
                  width: media.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Secondary Contact",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: cColor().grey,
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
              ],
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context)?25 :100, top: 20),
              child: Row(
                children: [
                  Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset("assets/photo2.png"),
                      Positioned(
                        top: 85,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor:
                          Colors.black.withOpacity(0.7),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_a_photo_outlined,
                                color: Colors.white,
                              )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: Responsive.isMobile(context)?media.width * 0.13 :media.width * 0.11,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User ID",
                        style: GoogleFonts.openSans(
                            fontSize:
                            Responsive.isMobile(context) ? 12 : 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(5),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                          child: Container(
                            height: media.height * 0.06,
                            width: Responsive.isMobile(context)?media.width*0.25 :media.width * 0.13,
                            child: Center(
                              child: Text("U-1234567"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
