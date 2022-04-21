import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/ManageDepartment/new_department.dart';
import 'package:apisd/ManageUser/uDetails.dart';
import 'package:apisd/ManageUser/user_detail.dart';
import 'package:apisd/ManageUser/userdetail_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ManageUserDetails.dart';
import 'departmetss.dart';
class ManageUserTabs extends StatefulWidget {
  const ManageUserTabs({Key? key}) : super(key: key);

  @override
  _ManageUserTabsState createState() => _ManageUserTabsState();
}

class _ManageUserTabsState extends State<ManageUserTabs> {
  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'User Details'),
    new Tab(text: 'Departments',)
  ];
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
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
                          right: Responsive.isMobile(context) ? 10 : 45,
                          top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Setting",
                                    style: GoogleFonts.openSans(
                                        fontSize:
                                        Responsive.isMobile(context) ? 14 : 18,
                                        fontWeight: FontWeight.bold,
                                        color: cColor().blue),
                                  ),
                                  SizedBox(
                                    width: media.width * 0.01,
                                  ),
                                  Text("-"),
                                  SizedBox(
                                    width: media.width * 0.01,
                                  ),
                                  Text(
                                    "Manage User",
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
                                  InkWell(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserTab()));
                                    },
                                    child: Text(
                                      "Finish Editing",
                                      style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          color: cColor().blue,
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                  ),


                                  SizedBox(
                                    width: 18,
                                  ),
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
                      onTap: (index) {
                        setState(() {
                          /*index == 0 ? isLeft = true : isLeft = false;*/
                        });
                      },
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      tabs: myTabs),
                ],
              ),
            ),
            body: TabBarView(
              /*controller: ,*/
              children: [ManageUserDetails(), Depart()],
            )));
  }
}
