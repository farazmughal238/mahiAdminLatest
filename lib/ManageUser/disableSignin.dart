import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DisableSignin extends StatefulWidget {
  const DisableSignin({Key? key}) : super(key: key);

  @override
  _DisableSigninState createState() => _DisableSigninState();
}

class _DisableSigninState extends State<DisableSignin> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Disable Sign-in",
              style: GoogleFonts.openSans(fontSize: 22),
            ),
            SizedBox(
              height: media.height * 0.03,
            ),
            Container(
              width: media.width * 0.65,
              child: Text(
                "Disabling sign-in will stop the user from accessing the Mahi Workplace system. The user will be signed out of all current instances. You can enable sign in at anytime through the ???Manage User??? menu.",
                style: GoogleFonts.openSans(
                    fontSize: 18, color: Color(0xff6a6a6a)),
              ),
            ),
            SizedBox(
              height: media.height * 0.03,
            ),



            Container(
              width: Responsive.isMobile(context)
                  ? media.width * 0.41
                  : media.width * 0.15,
              height: media.height * 0.058,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                onPressed: () {

                  Navigator.pop(context);
                },
                child: Text(
                  "Confirm",
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
    );
  }
}
