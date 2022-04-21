import 'package:apisd/ManageDepartment/new_department.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
import '../HomeScreens/enduseradmin.dart';
import '../HomeScreens/homescreen.dart';
import 'EditDepartment/edit_departments.dart';
import 'manage_dep_model.dart';

class Manage_department extends StatefulWidget {
  const Manage_department({Key? key}) : super(key: key);

  @override
  _Manage_departmentState createState() => _Manage_departmentState();
}

class _Manage_departmentState extends State<Manage_department> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<ManageDep> manageDepartment = [
    ManageDep(depName: "Global(All users)", totalUser: "2", id: "1"),
  ];
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
      body: Padding(
        padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 10 : 50,right: Responsive.isMobile(context) ? 10 : 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isMobile(context) ? 15 : 0,
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
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                        },
                        child: Text(
                          "Setting",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 18,
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
                        "Manage Department",
                        style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 12 : 18,
                        ),
                      )
                    ],
                  )),
                  Container(
                      child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => NewDepartment()));
                        },
                        child: Text(
                          "Add new Department",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 10 : 14,
                              fontWeight: FontWeight.bold,
                              color: cColor().blue),
                        ),
                      ),
                      SizedBox(
                        width: media.width * 0.01,
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
            SizedBox(
              height: media.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isMobile(context)? 0.0 :40.0
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Search by department name",
                        style: GoogleFonts.openSans(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.45
                            : media.width * 0.25,
                        height: media.height * 0.050,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: cColor().lightblue,
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide:
                                      BorderSide(color: Color(0xfff0f0f0))),
                              enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  borderSide:
                                      BorderSide(color: Color(0xfff0f0f0))),
                              contentPadding:
                                  EdgeInsets.only(top: 15, bottom: 10),
                              hintText: "Search",
                              hintStyle: GoogleFonts.openSans(fontSize: 10),
                              prefixIcon: Icon(
                                Icons.search,
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sort by",
                        style: GoogleFonts.openSans(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: media.height * 0.01,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.20
                            : media.width * 0.15,
                        height: media.height * 0.050,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: cColor().lightblue,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "A-Z",
                                style: GoogleFonts.openSans(
                                    color: Color(0xff6A6A6A), fontSize: 10),
                              ),
                            ),
                            items: <String>[
                              'A-Z',
                              'Z-A',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: GoogleFonts.openSans(
                                      color: Color(0xff6A6A6A), fontSize: 10),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "",
                        style: TextStyle(color: Colors.transparent),
                      ),
                      SizedBox(
                        height: media.height * 0.009,
                      ),
                      Container(
                        width: Responsive.isMobile(context)
                            ? media.width * 0.24
                            : media.width * 0.05,
                        height: media.height * 0.050,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: cColor().blue,
                        ),
                        child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Apply",
                            style: GoogleFonts.openSans(
                              fontSize: 10,
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: media.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Responsive.isMobile(context)? 0.0 :40.0
              ),
              child: DataTable(
                  dividerThickness: 0,
                  horizontalMargin: 15,
                  columnSpacing: Responsive.isMobile(context) ? 25 : 340,
                  columns: [
                    DataColumn(
                        label: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text(
                        "Department Name",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 8 : 10,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    DataColumn(
                        label: Text("Total users",
                            style: GoogleFonts.openSans(
                                fontSize: Responsive.isMobile(context) ? 8 : 10,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("Department ID",
                            style: GoogleFonts.openSans(
                                fontSize: Responsive.isMobile(context) ? 8 : 10,
                                fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("",
                            style: GoogleFonts.openSans(
                                fontSize: Responsive.isMobile(context) ? 8 : 10,
                                fontWeight: FontWeight.bold))),
                  ],
                  rows: manageDepartment.map((e) {
                    return DataRow(cells: [
                      DataCell(Row(
                        children: [
                          Container(
                            height: media.height * 0.06,
                            width: media.width * 0.003,
                            color: Color(0xff0063f7),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(e.depName,
                              style: GoogleFonts.openSans(
                                  fontSize:
                                      Responsive.isMobile(context) ? 8 : 10)),
                        ],
                      )),
                      DataCell(Text(e.totalUser,
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 8 : 10))),
                      DataCell(Text(e.id,
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 8 : 10))),
                      DataCell(InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditDepartment()));
                        },
                        child: Image.asset(
                          "assets/edit.png",
                          height: 18,
                        ),
                      )),
                    ]);
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
