import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailss extends StatefulWidget {
  const Detailss({Key? key}) : super(key: key);

  @override
  _DetailssState createState() => _DetailssState();
}

class _DetailssState extends State<Detailss> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isMobile(context) ? 10 : 50, top: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/projetc.png"),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Text(
                            "Projects (Trades)",
                            style: GoogleFonts.openSans(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.height * 0.03,
                      ),
                      Text(
                        "Summary",
                        style: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Container(
                      
                        child: Responsive.isMobile(context)
                            ? Text(
                                "Allow staff, visitors and contractor to sign in and\n out "
                                " Includes a log , signature and photo. Can ping\n admin and "
                                "visitors persons",
                                style: GoogleFonts.openSans(fontSize: 14),
                              )
                            : Text(
                                "Allow staff, visitors and contractor to sign in and out "
                                "Includes a log , signature\nand photo. Can ping admin and "
                                "visitors persons",
                                style: GoogleFonts.openSans(fontSize: 14),
                              ),
                      ),
                      SizedBox(
                        height: media.height * 0.07,
                      ),
                      Text(
                        "Module Type",
                        style: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Text(
                        "Core",
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          color: Color(0xff4791FF),
                        ),
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Text(
                        "Industries",
                        style: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: media.height * 0.02,
                      ),
                      Row(
                        children: [
                          Container(
                            height: media.height * 0.07,
                            width: Responsive.isMobile(context)
                                ? media.width * 0.26
                                : media.width * 0.11,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cColor().blue,
                            ),
                            child: Center(
                                child: Text(
                              "Trades & Constructions",
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10,
                                  color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Container(
                            height: media.height * 0.07,
                            width: Responsive.isMobile(context)
                                ? media.width * 0.2
                                : media.width * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cColor().blue,
                            ),
                            child: Center(
                                child: Text(
                              "Corporate",
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10,
                                  color: Colors.white),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: media.width * 0.08,
                  ),
                  Responsive.isMobile(context)
                      ? Container()
                      : Column(
                    children: [
                      buildContainer(media),
                      SizedBox(height: 10,),
                      Text('View More Info', style: TextStyle(color: Colors.blue, fontSize: 14),)

                    ],
                  ),
                ],
              ),
            ),
            /*SizedBox(height: Responsive.isMobile(context)?media.height*0.15 :media.height*0.20,),*/
            SizedBox(
              height: media.height * 0.05,
            ),
            Responsive.isMobile(context) ? Padding(
              padding: const EdgeInsets.only(left: 10),
              child: buildContainer(media),
            ) : Container(),
            SizedBox(
              height: media.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(Size media) {
    return Container(

      height: Responsive.isMobile(context)?media.height * 0.30 :media.height * 0.48,
      width: Responsive.isMobile(context)?media.width * 0.95 :media.width * 0.45,
      color: Color(0xffcacaca),
      child: Center(
        child: Text(
          "EMBEDDED YOUTUBE VIDEO",
          style:
              GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
