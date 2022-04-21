import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'newDetail.dart';
class NewTab extends StatefulWidget {
  const NewTab({Key? key}) : super(key: key);

  @override
  _NewTabState createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 1,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(double.infinity, 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.isMobile(context) ? 15 : 45,
                          right: Responsive.isMobile(context) ? 10 : 50,
                          top: 10),
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
                                          fontSize:
                                          Responsive.isMobile(context) ? 14 : 18,
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
                                    "Module Store",
                                    style: GoogleFonts.openSans(
                                      fontSize:
                                      Responsive.isMobile(context) ? 14 : 18,
                                    ),
                                  )
                                ],
                              )),
                          Container(

                              child: Row(
                                children: [

                                  Text(
                                    "Done",
                                    style: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: cColor().blue),
                                  ),
                                  SizedBox(width: media.width*0.04,),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Image.asset("assets/back.png"))
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.grey,
                    labelColor: Colors.grey,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text("Details",
                            style: GoogleFonts.openSans(
                                fontSize:
                                Responsive.isMobile(context) ? 11 : 14)),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [NewDetail()],
            )));
  }
}
