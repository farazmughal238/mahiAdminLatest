import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ModuleStoreByDoneButton/module_store_by_done_button.dart';
import 'TabBarss/departments.dart';
import 'TabBarss/detailss.dart';
import 'TabBarss/moderators.dart';

class ManageTab extends StatefulWidget {
  bool fromEdit;
   ManageTab({Key? key, required this.fromEdit}) : super(key: key);

  @override
  _ManageTabState createState() => _ManageTabState();
}

class _ManageTabState extends State<ManageTab> {
  bool isLeft = true;
  int index = 0;
  bool isChange = false;
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return DefaultTabController(
        initialIndex: index,
        length: widget.fromEdit == false? 1: 3,
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
                          Responsive.isMobile(context)? PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: Text("Add Moderator"),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: Text("Add External user"),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: Text("Finish Adding Moderator"),
                                  value: 2,
                                )
                              ]
                          ):Container(
                              child: Row(
                            children: [
                              isChange
                                  ? Text(
                                      "Add External User",
                                      style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: cColor().blue),
                                    )
                                  : Container(),
                              SizedBox(
                                width: media.width * 0.03,
                              ),
                              isLeft
                                  ? InkWell(
                                      onTap: () {
                                        setState(() {
                                          isChange = !isChange;
                                        });
                                      },
                                      child: isChange
                                          ? Text(
                                              "Finish Adding Moderatror",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: cColor().blue),
                                            )
                                          : widget.fromEdit == false? Container() :Text(
                                              "Add Moderator",
                                              style: GoogleFonts.openSans(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: cColor().blue),
                                            ),
                                    )
                                  : Container(),
                              SizedBox(
                                width: media.width * 0.03,
                              ),
                              widget.fromEdit == false? Container() : InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ManageModuleByDoneButton()));
                                },
                                child: Text(
                                  "Done",
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: cColor().blue),
                                ),
                              ),
                              SizedBox(
                                width: media.width * 0.04,
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
                  widget.fromEdit == false? TabBar(
                    /*onTap: (index) {
                      setState(() {
                        index == 2 ? isLeft = true : isLeft = false;
                      });
                    },*/
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
                  ) : TabBar(
                    onTap: (index) {
                      setState(() {
                        index == 2 ? isLeft = true : isLeft = false;
                      });
                    },
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
                      Tab(
                        child: Text(
                          "Departments",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 11 : 14),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Moderators",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 11 : 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: widget.fromEdit == false? TabBarView(
              children: [Detailss()],
            ): TabBarView(
              children: [Detailss(), Departmentss(), Moderators()],
            )));
  }
}
