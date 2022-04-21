import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/HomeScreens/enduseradmin.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../SaveChanges.dart';

class Detailsone extends StatefulWidget {
  const Detailsone({Key? key}) : super(key: key);

  @override
  _DetailsoneState createState() => _DetailsoneState();
}

class _DetailsoneState extends State<Detailsone> {
  bool ischanges = false;
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 15 : 45,
                right: Responsive.isMobile(context) ? 10 : 45,
                top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        "Setting",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 14 : 18,
                            fontWeight: FontWeight.bold,
                            color: cColor().blue),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    Text("-"),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    Text(
                      "My Details",
                      style: GoogleFonts.openSans(
                        fontSize: Responsive.isMobile(context) ? 14 : 18,
                      ),
                    )
                  ],
                )),
                Container(
                    child: Row(
                  children: [
                    ischanges
                        ? Container()
                        : InkWell(
                            onTap: () {
                              setState(() {
                                ischanges = !ischanges;
                              });
                            },
                            child: Text(
                              "Edit My Details",
                              style: GoogleFonts.openSans(
                                  fontSize:
                                      Responsive.isMobile(context) ? 10 : 14,
                                  fontWeight: FontWeight.bold,
                                  color: cColor().blue),
                            ),
                          ),
                    SizedBox(
                      width: media.width * 0.01,
                    ),
                    InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/back.png"))
                  ],
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 15 : 80,
                right: Responsive.isMobile(context) ? 10 : 80,
                top: Responsive.isMobile(context) ? 15 : 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "First Name",
                                style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                  hintText: 'Rishant',
                                  filled: true,
                                  fillColor: ischanges
                                      ? cColor().lightblue
                                      : cColor().grey,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Last Name",
                                style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                  hintText: 'Nair',
                                  filled: true,
                                  fillColor: ischanges
                                      ? cColor().lightblue
                                      : cColor().grey,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Job title",
                                style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                  hintText: 'Director',
                                  filled: true,
                                  fillColor: ischanges
                                      ? cColor().lightblue
                                      : cColor().grey,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Email Address",
                                style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                  hintText: 'rish@nzitg.co.nz',
                                  filled: true,
                                  fillColor: ischanges
                                      ? cColor().lightblue
                                      : cColor().grey,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Main Contact",
                                style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                  hintText: '022 474 7444',
                                  filled: true,
                                  fillColor: ischanges
                                      ? cColor().lightblue
                                      : cColor().grey,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                "Secondary Contact",
                                style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 12 : 12,
                                    fontWeight: FontWeight.bold),
                              ),
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
                                  hintText: '09 888 9073',
                                  filled: true,
                                  fillColor: ischanges
                                      ? cColor().lightblue
                                      : cColor().grey,
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
                      padding: EdgeInsets.only(left: Responsive.isMobile(context)?20 :100, top: 20),
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
                            width: Responsive.isMobile(context)?media.width * 0.1:media.width * 0.11,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  "User ID",
                                  style: GoogleFonts.openSans(
                                      fontSize:
                                          Responsive.isMobile(context) ? 12 : 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 10,),
                              DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(5),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
                                  child: Container(
                                    height: media.height * 0.04,
                                    width: Responsive.isMobile(context)?media.width * 0.25 :media.width * 0.13,
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
                    Responsive.isMobile(context)
                        ? buildColumn(context, media)
                        : Container()
                  ],
                ),
                Responsive.isMobile(context)
                    ? Container()
                    : buildColumn(context, media)
              ],
            ),
          ),
          SizedBox(
            height: media.height * 0.05,
          ),
          ischanges
              ? Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.isMobile(context) ? 20 : 30, right: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: Responsive.isMobile(context)?MainAxisAlignment.center :MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: Responsive.isMobile(context)
                                  ? media.width * 0.35
                                  : media.width * 0.15,
                              height: Responsive.isMobile(context)
                                  ? media.height * 0.040
                                  : media.height * 0.058,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    side: BorderSide(color: cColor().blue)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancel",
                                  style: GoogleFonts.openSans(
                                      fontSize: Responsive.isMobile(context)
                                          ? 10
                                          : 12,
                                      letterSpacing: 1.0,
                                      color: Color(0xff0063f7)),
                                ),
                                color: Colors.white,
                                textColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: media.width * 0.05,
                            ),
                            Container(
                              width: Responsive.isMobile(context)
                                  ? media.width * 0.35
                                  : media.width * 0.15,
                              height: Responsive.isMobile(context)
                                  ? media.height * 0.040
                                  : media.height * 0.058,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SaveChanges()));
                                },
                                child: Text(
                                  "Save Changes",
                                  style: GoogleFonts.openSans(
                                    fontSize:
                                        Responsive.isMobile(context) ? 10 : 12,
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
                      )
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  Column buildColumn(BuildContext context, Size media) {
    return Column(
      children: [
        Column(
          children: [
            Divider(),
            Container(
              width: Responsive.isMobile(context)
                  ? media.width * 0.9
                  : media.width * 0.27,
              height: media.height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffEDF4FF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Current Password",
                            style: GoogleFonts.openSans(
                                fontSize: 10, color: Color(0xff595959),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: media.height * 0.01,
                        ),
                        Container(
                          width: Responsive.isMobile(context)
                              ? media.width * 0.45
                              : media.width * 0.25,
                          height: media.height * 0.06,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF0F0F0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              contentPadding: EdgeInsets.only(
                                  top: 15, bottom: 10, left: 10),
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
                            "New Password",
                            style: GoogleFonts.openSans(
                                fontSize: 10, color: Color(0xff595959),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: media.height * 0.01,
                        ),
                        Container(
                          width: Responsive.isMobile(context)
                              ? media.width * 0.45
                              : media.width * 0.25,
                          height: media.height * 0.06,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF0F0F0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              contentPadding: EdgeInsets.only(
                                  top: 15, bottom: 10, left: 10),
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
                            "Re enter Password",
                            style: GoogleFonts.openSans(
                                fontSize: 10, color: Color(0xff595959),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: media.height * 0.01,
                        ),
                        Container(
                          width: Responsive.isMobile(context)
                              ? media.width * 0.45
                              : media.width * 0.25,
                          height: media.height * 0.06,
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF0F0F0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xffBABABA))),
                              contentPadding: EdgeInsets.only(
                                  top: 15, bottom: 10, left: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.38
                          : media.width * 0.15,
                      height: media.height * 0.058,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {},
                        child: Text(
                          "Change Password",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            letterSpacing: 1.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        color: Color(0xff0063f7),
                        textColor: Colors.white,
                        hoverColor: Colors.indigo[900],
                        highlightColor: Colors.indigo[900],
                        splashColor: Colors.indigo[900],
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),

          ],
        )
      ],
    );
  }
}
