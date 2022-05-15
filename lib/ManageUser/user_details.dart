import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Container(
          width: media.width,
          child: Padding(
            padding: EdgeInsets.only(left: Responsive.isMobile(context)? 15:80,top: 15),
            child: Column(
              crossAxisAlignment: Responsive.isMobile(context)? CrossAxisAlignment.center : CrossAxisAlignment.start,
              mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.start,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 20.0,
                  columnSpacing: 10.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: GoogleFonts.openSans(
                                fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                  Condition.smallerThan(name: MOBILE, value: 14.0),
                                ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
                              Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                              Condition.largerThan(name: MOBILE, value: media.width * 0.22),
                              Condition.largerThan(name: TABLET, value: media.width * 0.22)
                            ]).value,
                            /*width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.25,*/
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
                    ),
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
                        children: [
                          Text(
                            "Last Name",
                            style: GoogleFonts.openSans(
                                fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
                                  Condition.smallerThan(name: MOBILE, value: 14.0),
                                ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
                              Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                              Condition.largerThan(name: MOBILE, value: media.width * 0.22),
                              Condition.largerThan(name: TABLET, value: media.width * 0.22)
                            ]).value,
                            /*width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.25,*/
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
                    )
                  ],
                ),
                SizedBox(height: 10,),

                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.start,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 20.0,
                  columnSpacing: 10.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
                        children: [
                          Text(
                            "Job title",
                            style: GoogleFonts.openSans(
                                fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                  Condition.smallerThan(name: MOBILE, value: 14.0),
                                ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
                              Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                              Condition.largerThan(name: MOBILE, value: media.width * 0.22),
                              Condition.largerThan(name: TABLET, value: media.width * 0.22)
                            ]).value,
                            /*width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.25,*/
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
                    ),
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
                        children: [
                          Text(
                            "Email Address",
                            style: GoogleFonts.openSans(
                                fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                  Condition.smallerThan(name: MOBILE, value: 14.0),
                                ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
                              Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                              Condition.largerThan(name: MOBILE, value: media.width * 0.22),
                              Condition.largerThan(name: TABLET, value: media.width * 0.22)
                            ]).value,
                            /*width: Responsive.isMobile(context)
                                ? media.width * 0.45
                                : media.width * 0.25,*/
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
                    )
                  ],
                ),
                SizedBox(height: 10,),

                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.start,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 20.0,
                  columnSpacing: 10.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
                        children: [
                          Text(
                            "Main Contact",
                            style: GoogleFonts.openSans(
                                fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                  Condition.smallerThan(name: MOBILE, value: 14.0),
                                ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
                              Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                              Condition.largerThan(name: MOBILE, value: media.width * 0.22),
                              Condition.largerThan(name: TABLET, value: media.width * 0.22)
                            ]).value,
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
                    ),
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
                        children: [
                          Text(
                            "Secondary Contact",
                            style: GoogleFonts.openSans(
                                fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                  Condition.smallerThan(name: MOBILE, value: 14.0),
                                ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
                              Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                              Condition.largerThan(name: MOBILE, value: media.width * 0.22),
                              Condition.largerThan(name: TABLET, value: media.width * 0.22)
                            ]).value,
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
                    )
                  ],
                ),
                SizedBox(
                  height: media.height * 0.04,
                ),

                Container(
                  width: Responsive.isMobile(context)? media.width: media.width/2.5,
                  child: ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.spaceAround,
                    columnMainAxisAlignment: MainAxisAlignment.center,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    rowSpacing: 20.0,
                    columnSpacing: 20.0,
                    layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                    children: [
                      ResponsiveRowColumnItem(
                        child: Stack(
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
                      ),
                      ResponsiveRowColumnItem(
                        child: Column(
                          crossAxisAlignment: Responsive.isMobile(context)? CrossAxisAlignment.center : CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User ID",
                              style: GoogleFonts.openSans(

                                  fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                    Condition.smallerThan(name: MOBILE, value: 14.0),
                                  ]).value,
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
                                  width: Responsive.isMobile(context)?media.width*0.30 :media.width * 0.13,
                                  child: Center(
                                    child: Text("U-1234567"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

