import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/ManageUser/set_password.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';

class AddNew extends StatefulWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Responsive.isMobile(context)
          ? Drawer(
              child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Color(0xff0063f7)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (ctx) => Dialog(
                                          child: Container(
                                            height: media.height * 0.5,
                                            width: media.width * 0.60,
                                            color: Colors.white,
                                            child: Container(
                                              margin: EdgeInsets.only(top: 10),
                                              width: 300,
                                              height: 300,
                                              color: Colors.white,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10, top: 10),
                                                    child: Row(
                                                      children: [
                                                        Image.asset("assets/photo.png"),
                                                        SizedBox(
                                                          width: media.width * 0.02,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Matt Howard",
                                                              style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold),
                                                            ),
                                                            SizedBox(
                                                              height: media.height * 0.01,
                                                            ),
                                                            Text(
                                                              "Owner & operator",
                                                              style: GoogleFonts.openSans(fontSize: 12, color: Color(0xff595959)),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: media.width * 0.04,
                                                        ),
                                                        IconButton(onPressed: () {}, icon: Icon(Icons.settings))
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(),
                                                  SizedBox(
                                                    height: media.height * 0.04,
                                                  ),
                                                  Text(
                                                    "User-ID",
                                                    style: GoogleFonts.openSans(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.01,
                                                  ),
                                                  Text(
                                                    "U-5648216",
                                                    style: GoogleFonts.openSans(
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.02,
                                                  ),
                                                  Text(
                                                    "Organisation ID",
                                                    style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff595959)),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.01,
                                                  ),
                                                  Text(
                                                    "O-2793645",
                                                    style: GoogleFonts.openSans(fontSize: 14, color: Color(0xff595959)),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.07,
                                                  ),
                                                  Divider(),
                                                  Text(
                                                    "Sign-In",
                                                    style: GoogleFonts.openSans(fontSize: 12, color: Color(0xff595959)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ));
                                /*pageController.animateToPage(5,
                                    duration: Duration(milliseconds: 250),
                                    curve: Curves.bounceInOut);*/
                              },
                              child: Image.asset(
                                "assets/photo.png",
                                height: 45,
                                width: 45,
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (ctx) => Dialog(
                                            child: Container(
                                              height: media.height * 0.5,
                                              width: media.width * 0.60,
                                              color: Colors.white,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Notification",
                                                    style: GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.01,
                                                  ),
                                                  Divider()
                                                ],
                                              ),
                                            ),
                                          ));

                                  /*pageController.animateToPage(6,
                                      duration: Duration(milliseconds: 250),
                                      curve: Curves.bounceInOut);*/
                                },
                                child: Icon(Icons.add_alert_outlined, color: Colors.white)),
                          ],
                        ),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        Text(
                          "Muhammad Hamza Tahir",
                          style: GoogleFonts.openSans(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        Text(
                          "hamzatahir594@gmail.com",
                          style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
                        )
                      ],
                    )),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Home",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Message",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Contacts",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Core",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Checklists",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Report&Notify",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Shared",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ))
          : null,
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: Color(0xff0063f7),
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
              actions: [
                Image.asset("assets/admin.png"),
              ],
            )
          : PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: Container(
                height: media.height * 0.13,
                color: Color(0xFF0063F7),
                child: Row(
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Image.asset("assets/admin.png"),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Home ",
                          style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 12 : 14.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Spacer(flex: 4),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Messages ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Contacts ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Core ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Checklists ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Report&Notify ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "Shared ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    InkWell(
                        onTap: () {
                          // pageController.animateToPage(6,
                          //     duration: Duration(milliseconds: 250),
                          //     curve: Curves.bounceInOut);
                        },
                        child: Icon(Icons.add_alert_outlined, color: Colors.white)),
                    Spacer(
                      flex: 1,
                    ),
                    InkWell(onTap: () {}, child: Icon(Icons.help_outline, color: Colors.white)),
                    Spacer(
                      flex: 1,
                    ),
                    InkWell(
                      onTap: () {
                        showGeneralDialog(
                            barrierLabel: "Label",
                            barrierDismissible: true,
                            barrierColor: Colors.black.withOpacity(0.5),
                            transitionDuration: Duration(milliseconds: 700),
                            context: context,
                            pageBuilder: (context, anim1, anim2) {
                              return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1, 0),
                                    end: Offset(0.389, 0),
                                  ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeIn, reverseCurve: Curves.easeIn)),
                                  child: SideProfie());
                            });
                      },
                      child: Image.asset(
                        "assets/photo.png",
                        height: 45,
                        width: 45,
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    )
                  ],
                ),
              )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 45, right: Responsive.isMobile(context) ? 10 : 45, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
                        },
                        child: Text(
                          "Setting",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 14 : 18, fontWeight: FontWeight.bold, color: cColor().blue),
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
                        "Add New User",
                        style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 14 : 18,
                        ),
                      )
                    ],
                  )),
                  Row(
                    children: [
                      SizedBox(
                        width: media.width * 0.01,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/back.png"))
                    ],
                  ),
                ],
              ),
            ),
            Center(
                child: Column(
              children: [
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 15.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: buildColumn(context, media),
                    ),
                    ResponsiveRowColumnItem(
                      child: buildColumn1(context, media),
                    )
                  ],
                ),
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 15.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: buildColumn2(context, media),
                    ),
                    ResponsiveRowColumnItem(
                      child: buildColumn3(context, media),
                    )
                  ],
                ),

                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 15.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: buildColumn4(context, media),
                    ),
                    ResponsiveRowColumnItem(
                      child: buildColumn5(context, media),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  rowSpacing: 15.0,
                  columnSpacing: 10,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 50,
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                            size: 40,
                          )),
                    ),
                    ResponsiveRowColumnItem(
                      child: Column(
                        crossAxisAlignment: Responsive.isMobile(context)? CrossAxisAlignment.center :CrossAxisAlignment.start,
                        children: [
                          Text(
                            "User ID",
                            style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              child: Container(
                                height: media.height * 0.05,
                                width: Responsive.isMobile(context) ? media.width * 0.30 : media.width * 0.16,
                                child: Center(
                                  child: Text("U-1234567"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 50,
                        child: Icon(
                          Icons.perm_identity,
                          color: Colors.white,
                          size: 40,
                        )),
                    SizedBox(
                      width: media.width * 0.115,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User ID",
                          style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            child: Container(
                              height: media.height * 0.05,
                              width: Responsive.isMobile(context) ? media.width * 0.30 : media.width * 0.16,
                              child: Center(
                                child: Text("U-1234567"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )*/
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        )),
        child: Row(
          mainAxisAlignment: Responsive.isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20, right: Responsive.isMobile(context) ? 0 : 35, top: 20),
              child: Row(
                children: [
                  Container(
                    width: Responsive.isMobile(context) ? media.width * 0.43 : media.width * 0.15,
                    height: Responsive.isMobile(context) ? media.height * 0.058 : media.height * 0.058,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6), side: BorderSide(color: cColor().blue)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.openSans(fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                          Condition.smallerThan(name: MOBILE, value: 14.0),
                        ]).value, letterSpacing: 1.0, color: Color(0xff0063f7)),
                      ),
                      color: Colors.white,
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: media.width * 0.03,
                  ),
                  Container(
                    width: Responsive.isMobile(context) ? media.width * 0.43 : media.width * 0.15,
                    height: Responsive.isMobile(context) ? media.height * 0.058 : media.height * 0.058,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SetPassword()));
                      },
                      child: Text(
                        "Set Password",
                        style: GoogleFonts.openSans(
                          fontSize: ResponsiveValue(context, defaultValue: 12.0, valueWhen: [
                            Condition.smallerThan(name: MOBILE, value: 14.0),
                          ]).value,
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
      ),
    );
  }

  Column buildColumn5(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Secondary Contact",
            style: GoogleFonts.openSans(fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
              Condition.smallerThan(name: MOBILE, value: 14.0),
            ]).value, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
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
              fillColor: cColor().lightblue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumn4(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Main Contact",
            style: GoogleFonts.openSans(fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
              Condition.smallerThan(name: MOBILE, value: 14.0),
            ]).value, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
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
              fillColor: cColor().lightblue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumn3(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Email Address",
            style: GoogleFonts.openSans(fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
              Condition.smallerThan(name: MOBILE, value: 14.0),
            ]).value, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
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
              fillColor: cColor().lightblue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumn2(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Job Title",
            style: GoogleFonts.openSans(fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
              Condition.smallerThan(name: MOBILE, value: 14.0),
            ]).value, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
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
              fillColor: cColor().lightblue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumn1(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Last Name",
            style: GoogleFonts.openSans(
                fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
    Condition.smallerThan(name: MOBILE, value: 14.0),
    ]).value,
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
            Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
            Condition.largerThan(name: MOBILE, value: media.width * 0.22),
            Condition.largerThan(name: TABLET, value: media.width * 0.22)
          ]).value,
          //width: Responsive.isMobile(context) ? media.width : media.width * 0.22,
          height: media.height * 0.06,
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              filled: true,
              fillColor: cColor().lightblue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumn(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "First Name",
            style: GoogleFonts.openSans(
                fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen: [
                  Condition.smallerThan(name: MOBILE, value: 14.0),
                ]).value,
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: ResponsiveValue(context, defaultValue: media.width * 0.22, valueWhen: [
            Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
            Condition.largerThan(name: MOBILE, value: media.width * 0.22),
            Condition.largerThan(name: TABLET, value: media.width * 0.22)
          ]).value,
          //width: Responsive.isMobile(context) ? media.width : media.width * 0.22,
          height: media.height * 0.06,
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              filled: true,
              fillColor: cColor().lightblue,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
                  const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }
}
