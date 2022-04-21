import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/ManageUser/passwordreset.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  _SetPasswordState createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                      "assets/photo.png"),
                                                  SizedBox(
                                                    width: media.width *
                                                        0.02,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Text(
                                                        "Matt Howard",
                                                        style: GoogleFonts
                                                            .openSans(
                                                            fontSize:
                                                            14,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                        media.height *
                                                            0.01,
                                                      ),
                                                      Text(
                                                        "Owner & operator",
                                                        style: GoogleFonts
                                                            .openSans(
                                                            fontSize:
                                                            12,
                                                            color: Color(
                                                                0xff595959)),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: media.width *
                                                        0.04,
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                          Icons.settings))
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
                                                fontWeight:
                                                FontWeight.bold,
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
                                              style: GoogleFonts.openSans(
                                                  fontSize: 14,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  color:
                                                  Color(0xff595959)),
                                            ),
                                            SizedBox(
                                              height: media.height * 0.01,
                                            ),
                                            Text(
                                              "O-2793645",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 14,
                                                  color:
                                                  Color(0xff595959)),
                                            ),
                                            SizedBox(
                                              height: media.height * 0.07,
                                            ),
                                            Divider(),
                                            Text(
                                              "Sign-In",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 12,
                                                  color:
                                                  Color(0xff595959)),
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
                                              style: GoogleFonts.openSans(
                                                  fontSize: 15,
                                                  fontWeight:
                                                  FontWeight.bold),
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
                              child: Icon(Icons.add_alert_outlined,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Text(
                        "Muhammad Hamza Tahir",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Text(
                        "hamzatahir594@gmail.com",
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 15),
                      )
                    ],
                  )),

              ListTile(
                onTap: () {},
                title: Text(
                  "Home",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  "Message",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  "Contacts",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  "Core",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  "Checklists",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  "Report&Notify",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {},
                title: Text(
                  "Shared",
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
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
                Spacer(
                    flex: 4
                ),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      "Messages ",
                      style: GoogleFonts.openSans(
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
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
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
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
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
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
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
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
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
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
                          fontSize:
                          Responsive.isMobile(context) ? 12 : 14.5,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
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
                    child: Icon(Icons.add_alert_outlined,
                        color: Colors.white)),
                Spacer(
                  flex: 1,
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(Icons.help_outline, color: Colors.white)),
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
                              ).animate(CurvedAnimation(
                                  parent: anim1,
                                  curve: Curves.easeIn,
                                  reverseCurve: Curves.easeIn)),
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
      body: Center(
        child: Container(
          /*color: cColor().lightblue,*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey),
        )),
        child: Row(
          mainAxisAlignment: Responsive.isMobile(context)
              ? MainAxisAlignment.center
              : MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(
                  bottom: 20,
                  right: Responsive.isMobile(context) ? 0 : 35,
                  top: 20),
              child: Row(
                children: [
                  Container(
                    width: Responsive.isMobile(context)
                        ? media.width * 0.45
                        : media.width * 0.15,
                    height: Responsive.isMobile(context)
                        ? media.height * 0.058
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
                            fontSize: Responsive.isMobile(context) ? 10 : 12,
                            letterSpacing: 1.0,
                            color: Color(0xff0063f7)),
                      ),
                      color: Colors.white,
                      textColor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: media.width * 0.03,
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PasswordReset()));
                      },
                      child: Text(
                        "Set Password",
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
            )
          ],
        ),
      ),
    );
  }
}
