import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
class UDetails extends StatefulWidget {
  const UDetails({Key? key}) : super(key: key);

  @override
  _UDetailsState createState() => _UDetailsState();
}

class _UDetailsState extends State<UDetails> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: media.width,
          child: Padding(
            padding: EdgeInsets.only(left: Responsive.isMobile(context)? 15:80,top: 15, bottom: 10),
            child: ResponsiveRowColumn(
              rowMainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center : MainAxisAlignment.start,
              columnMainAxisAlignment: MainAxisAlignment.center,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              rowSpacing: 30.0,
              columnSpacing: 20.0,
              layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  child: Column(
                  crossAxisAlignment: Responsive.isDesktop(context)? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                    ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      columnMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      rowSpacing: 30.0,
                      columnSpacing: 20.0,
                      layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                                Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                                Condition.largerThan(name: TABLET, value: media.width * 0.25)
                              ]).value,
                              height: media.height * 0.06,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:cColor().lightblue,
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
                        ),),
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Name",
                              style: GoogleFonts.openSans(
                                  fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                                    Condition.smallerThan(name: MOBILE, value: 14.0),
                                  ]).value,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                                Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                                Condition.largerThan(name: TABLET, value: media.width * 0.25)
                              ]).value,
                              height: media.height * 0.06,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:cColor().lightblue,
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
                        ),),

                      ],
                    ),
                    ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      columnMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      rowSpacing: 30.0,
                      columnSpacing: 20.0,
                      layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                                Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                                Condition.largerThan(name: TABLET, value: media.width * 0.25)
                              ]).value,
                              height: media.height * 0.06,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:cColor().lightblue,
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
                        ),),
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                                Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                                Condition.largerThan(name: TABLET, value: media.width * 0.25)
                              ]).value,
                              height: media.height * 0.06,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:cColor().lightblue,
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
                        ),),

                      ],
                    ),
                    ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.start,
                      columnMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      rowSpacing: 30.0,
                      columnSpacing: 20.0,
                      layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                                Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                                Condition.largerThan(name: TABLET, value: media.width * 0.25)
                              ]).value,
                              height: media.height * 0.06,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:cColor().lightblue,
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
                        ),),
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                                Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                                Condition.largerThan(name: TABLET, value: media.width * 0.25)
                              ]).value,
                              height: media.height * 0.06,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor:cColor().lightblue,
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
                        ),),

                      ],
                    ),
                    SizedBox(height: 10,),
                    ResponsiveRowColumn(
                      rowMainAxisAlignment: MainAxisAlignment.center,
                      rowCrossAxisAlignment: CrossAxisAlignment.center,
                      columnMainAxisAlignment: MainAxisAlignment.center,
                      columnCrossAxisAlignment: CrossAxisAlignment.center,
                      rowSpacing: 30.0,
                      columnSpacing: 20.0,
                      layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                      children: [
                        ResponsiveRowColumnItem(child: Stack(
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
                        ),),
                        ResponsiveRowColumnItem(child: Column(
                          crossAxisAlignment: Responsive.isMobile(context)?  CrossAxisAlignment.center : CrossAxisAlignment.start,
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
                        )),

                      ],
                    ),
                    SizedBox(height: 10,),
                    /*Padding(
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
                    ),*/
                  ],
                ),),
                ResponsiveRowColumnItem(
                  child: Container(
                  /*color: cColor().lightblue,*/
                  child: Column(

                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEDF4FF),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Responsive.isMobile(context) ? 80 : 50,
                              horizontal: Responsive.isMobile(context) ? 50 : 25),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "create Password",
                                    style: GoogleFonts.openSans(
                                        fontSize: 10,
                                        color: Color(0xff595959)),
                                  ),
                                  SizedBox(
                                    height: media.height * 0.01,
                                  ),
                                  Container(
                                    width: Responsive.isMobile(context)
                                        ? media.width * 0.55
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
                                  Text(
                                    "Re-enter Password",
                                    style: GoogleFonts.openSans(
                                        fontSize: 10, color: Color(0xff595959)),
                                  ),
                                  SizedBox(
                                    height: media.height * 0.01,
                                  ),
                                  Container(
                                    width: Responsive.isMobile(context)
                                        ? media.width * 0.55
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
                              Text(
                                "Auto generate secure password",
                                style: GoogleFonts.openSans(
                                    fontSize: 10,
                                    color: Color(0xff1E26F6),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: media.height * 0.03,
                              ),
                              Container(
                                width: Responsive.isMobile(context)
                                    ? media.width * 0.45
                                    : media.width * 0.15,
                                height: Responsive.isMobile(context)
                                    ? media.height * 0.058
                                    : media.height * 0.058,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  onPressed: () {
                                    /*Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetPassword()));*/
                                  },
                                  child: Text(
                                    "Update Password",
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
                        ),
                      ),
                    ],
                  ),
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
