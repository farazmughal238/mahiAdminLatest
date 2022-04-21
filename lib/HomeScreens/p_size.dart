import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Responsive.dart';
import 'homescreen.dart';
class Psize extends StatefulWidget {
  const Psize({Key? key}) : super(key: key);

  @override
  _PsizeState createState() => _PsizeState();
}

class _PsizeState extends State<Psize> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          height: media.height * 0.13,
          color: Color(0xFF0063F7),
          child: Row(
            children: [
              Spacer(
                flex: 1,
              ),
              Image.asset("assets/admin.png"),
              Spacer(
                flex: 2,
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
                flex: 1,
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
                flex: 1,
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
                flex: 1,
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
                flex: 1,
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
                flex: 1,
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
                flex: 20,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    "Admin Panel ",
                    style: GoogleFonts.openSans(
                        fontSize:
                        Responsive.isMobile(context) ? 12 : 14.5,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
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
                flex: 2,
              )
            ],
          ),
        ));
  }
}
