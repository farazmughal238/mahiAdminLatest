import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/ManageUser/user_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
import 'deleteUser.dart';
import 'departmetss.dart';
import 'disableSignin.dart';
import 'editUser.dart';

class UDetail extends StatefulWidget {
  const UDetail({Key? key}) : super(key: key);

  @override
  _UDetailState createState() => _UDetailState();
}

class _UDetailState extends State<UDetail> {
  int index = 0;
  bool isLeft = false;
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
                                "Manage User",
                                style: GoogleFonts.openSans(
                                  fontSize:
                                      Responsive.isMobile(context) ? 14 : 18,
                                ),
                              )
                            ],
                          )),
                          Responsive.isMobile(context)?  PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: Text("Delete User"),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: Text("Disable Sign-in"),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: Text("Edit User"),
                                  value: 2,
                                )
                              ]
                          ):Container(

                              child: Row(
                            children: [
                              InkWell(
                                onTap:(){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DeleteUser()));
                                },
                                child: Text(
                                  "Delete User",
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: cColor().blue),
                                ),
                              ),
                              SizedBox(width: media.width*0.04,),
                              InkWell(
                                onTap: (){
                                  isLeft? null :Navigator.of(context).push(MaterialPageRoute(builder: (context) => DisableSignin()));
                                },
                                child: Text(
                                  "Disable Sign-in",
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: cColor().blue),
                                ),
                              ),
                              SizedBox(width: media.width*0.04,),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEdit()));
                                },
                                child: Text(
                                  "Edit User",
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: cColor().blue),
                                ),
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
                    onTap: (index){
                      setState(() {
                        index == 0 ? isLeft = false : isLeft = true;

                      });
                    },
                    isScrollable: true,
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("User Details",
                            style: GoogleFonts.openSans(
                                fontSize:
                                    Responsive.isMobile(context) ? 11 : 14)),
                      ),
                      Tab(
                        child: Text(
                          "Departments",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 11 : 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: TabBarView(

              children: [UserD(), Depart()],
            )));
  }
}
