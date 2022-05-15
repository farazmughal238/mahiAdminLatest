import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/ManageDepartment/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../HomeScreens/Responsive.dart';
import '../../HomeScreens/colors.dart';

import 'edit_department_provider.dart';
import 'edit_details.dart';
import 'edit_dapartment_user.dart';

class EditDepartmentTabs extends StatefulWidget {
  const EditDepartmentTabs({Key? key}) : super(key: key);

  @override
  _EditDepartmentTabsState createState() => _EditDepartmentTabsState();
}

class _EditDepartmentTabsState extends State<EditDepartmentTabs> {
  int index = 0;
  bool isLeft = true;
  bool isChange = true;

  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Details'),
    new Tab(text: 'Users'),
  ];
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<EditDepartmentProvider>(context);
    Size media = MediaQuery.of(context).size;
    return DefaultTabController(
        initialIndex: index,
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
                                    "Edit Department",
                                    style: GoogleFonts.openSans(
                                      fontSize:
                                      Responsive.isMobile(context) ? 14 : 18,
                                    ),
                                  )
                                ],
                              )),
                          bloc.isCheck == false? Container(
                              child: Row(
                                children: [
                                  isLeft
                                      ? Container()
                                      : InkWell(
                                    onTap: () {
                                      setState(() {
                                        isChange = !isChange;
                                      });
                                    },
                                    child: isChange
                                        ? Text(
                                      "Add new User",
                                      style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          color: cColor().blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                        : InkWell(
                                      onTap: () {
                                        /*Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NewDepartment()));*/
                                      },
                                      child: Text(
                                        "Finish Adding user",
                                        style: GoogleFonts.openSans(
                                            fontSize: 12,
                                            color: cColor().blue,
                                            fontWeight:
                                            FontWeight.bold),
                                      )
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
                              )): Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Remove Selected Users",
                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: cColor().blue, fontSize: 12),
                                ),

                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Select All",
                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: cColor().blue, fontSize: 12),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Unselect All",
                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: cColor().blue, fontSize: 12),
                                ),
                              ],
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                      onTap: (index) {
                        setState(() {
                          index == 0 ? isLeft = true : isLeft = false;
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
              children: [
                EditDetails(),
                EditUser()
              ],
            )));
  }
}
