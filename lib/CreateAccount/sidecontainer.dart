import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Sidecontainer extends StatefulWidget {
  const Sidecontainer({Key? key}) : super(key: key);

  @override
  _SidecontainerState createState() => _SidecontainerState();
}

class _SidecontainerState extends State<Sidecontainer> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: Color(0xff0063F7),
          height: media.height * 1.0,
          width: Responsive.isMobile(context) ? 200 : media.width * 0.30,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: media.height * 0.07,
                ),
                Image.asset("assets/newlogo.png"),
                SizedBox(
                  height: media.height * 0.07,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 10 : 70),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(
                            child: Text(
                              "Organization News Feeds",
                              style: GoogleFonts.openSans(
                                  color: Colors.white, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Project & Job Management",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Health & Safety Tools",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Checklist & Compliance",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Notify & Incident reporting",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Task analysis/JSA generator",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Service Request/ Work Orders",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Sign-in Register & COVID QR",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Collaborate & Share files",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Image.asset("assets/tick.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Expanded(child: Text(
                            "Connect with other organization",
                            style: GoogleFonts.openSans(
                                color: Colors.white, fontSize: 14),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.025,
                      ),
                      Row(
                        children: [
                          Expanded(child: Text(
                            "Plus a whole lot more...",
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
