import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/ManageUser/Add_new_user.dart';
import 'package:apisd/ManageUser/deleteUser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
import 'ManageUserByMenuButton.dart';
import 'editUser.dart';
import 'manageUser_model.dart';

class ManageUser extends StatefulWidget {
  const ManageUser({Key? key}) : super(key: key);

  @override
  _ManageUserState createState() => _ManageUserState();
}

class _ManageUserState extends State<ManageUser> {
  bool isSelected = false;
  List<ManageUsers> manageUser = [
    ManageUsers(
        userName: "Rishant Nair",
        emailAddress: "rish@nztig.co.nz",
        id: "U-12345678",
        userType: "Admin",
        pic: 'assets/photo.png',
        checkBoxValue: false
    ),

    ManageUsers(
        userName: "Steven Smith",
        emailAddress: "steven@smith.co.nz",
        id: "U-84759388",
        userType: "Editor",
        pic: 'assets/photo.png',
        checkBoxValue: false
    ),
  ];

  Iterable<ManageUsers> checkingValueTrue() {
    var checkingTrueValue = manageUser.where((element) => element.checkBoxValue == true);
    print('checkingValue:${checkingTrueValue}');
    return checkingTrueValue;
  }
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
                    Spacer(flex: 4),
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
        padding: EdgeInsets.only(
            left: Responsive.isMobile(context) ? 10 : 55,
            top: 40,
            right: Responsive.isMobile(context) ? 10 : 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
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
                            fontSize: Responsive.isMobile(context) ? 14 : 18,
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
                        fontSize: Responsive.isMobile(context) ? 14 : 18,
                      ),
                    )
                  ],
                )),
                SizedBox(height: media.height * 0.06,),
                checkingValueTrue().isNotEmpty? Responsive.isMobile(context)? PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteUser()));
                          },
                          child: Text(
                            "Delete Selected Users",
                            style: GoogleFonts.openSans(fontSize: 12),
                          ),
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Select All",
                          style: GoogleFonts.openSans(fontSize: 12),
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Unselect All",
                          style: GoogleFonts.openSans(fontSize: 12),
                        ),
                        value: 1,
                      ),
                    ]): Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteUser()));
                      },
                      child: Text(
                        "Delete Selected Users",
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 10 : 14,
                            fontWeight: FontWeight.bold,
                            color: cColor().blue),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Select All",
                      style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 10 : 14,
                          fontWeight: FontWeight.bold,
                          color: cColor().blue),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Unselect All",
                      style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 10 : 14,
                          fontWeight: FontWeight.bold,
                          color: cColor().blue),
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/back.png"))
                  ],
                ) : Container(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => AddNew()));
                          },
                          child: Text(
                            "Add new user",
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
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 20.0,
              children: [
                buildColumn(context, media),
                buildColumn1(context, media),
                checkingValueTrue().isNotEmpty?  buildColumn7(context, media) : buildColumn2(context, media),
                buildColumn3(media, context),
                Responsive.isDesktop(context)? buildColumn5() : Container(),
                Responsive.isDesktop(context)? buildColumn6() : Container()
              ],
            ),
            SizedBox(
              height: media.height * 0.04,
            ),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints boxConstraints)
                {
              return ConstrainedBox(
                constraints: BoxConstraints(minWidth: boxConstraints.maxWidth),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      dividerThickness: 0,
                      horizontalMargin: 15,
                      columnSpacing: boxConstraints.maxWidth/6,
                      columns: [
                        DataColumn(
                            label: Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text(
                                "Full name",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        DataColumn(
                            label: Text("Email Address",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text("User ID",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text("User Type",
                                style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text("",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.transparent))),
                      ],
                      rows: manageUser.map((e) {
                        return DataRow(cells: [
                          DataCell(Row(
                            children: [
                              Image.asset(
                                e.pic,
                                height: Responsive.isMobile(context) ? 35 : 50,
                              ),
                              SizedBox(width: 10,),
                              Text(e.userName,
                                  style: GoogleFonts.openSans(
                                      fontSize:
                                      Responsive.isMobile(context) ? 8 : 10),
                                  overflow: TextOverflow.ellipsis),
                            ],
                          )),
                          DataCell(Text(e.emailAddress,
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(Text(e.id,
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(Text(e.userType,
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(Row(
                            children: [
                              Checkbox(
                                checkColor: Color(0xff0063f7),
                                activeColor: Colors.white,
                                autofocus: false,
                                value: e.checkBoxValue,
                                onChanged: (bool? value) {
                                  setState(() {
                                    e.checkBoxValue = value!;
                                    isSelected = e.checkBoxValue;
                                    checkingValueTrue();
                                  });
                                },
                              ),
                              PopupMenuButton(
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => ManageUserByMenuButton()));
                                        },
                                        child: Text(
                                          "Manage User",
                                          style: GoogleFonts.openSans(fontSize: 12),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                    PopupMenuItem(
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteUser()));
                                        },
                                        child: Text(
                                          "Delete User",
                                          style: GoogleFonts.openSans(fontSize: 12),
                                        ),
                                      ),
                                      value: 1,
                                    ),
                                  ]),
                            ],
                          )),
                        ]);
                      }).toList()),
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  Column buildColumn6() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Total Licenses",
          style:
              GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 14,
        ),
        Text(
          "10",
          style: GoogleFonts.openSans(
              fontSize: 20, fontWeight: FontWeight.bold, color: cColor().blue),
        )
      ],
    );
  }

  Column buildColumn5() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Available Licenses",
          style:
              GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 14,
        ),
        Text(
          "8",
          style: GoogleFonts.openSans(
              fontSize: 20, fontWeight: FontWeight.bold, color: cColor().blue),
        )
      ],
    );
  }

  Column buildColumn3(Size media, BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "",
            style: TextStyle(color: Colors.transparent),
          ),
        ),
        SizedBox(
          height: media.height * 0.01,
        ),
        Container(
          width: Responsive.isMobile(context)
              ? double.infinity
              : media.width * 0.08,

          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: cColor().blue,
          ),
          child: RaisedButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Apply",
                style: GoogleFonts.openSans(
                  fontSize: Responsive.isMobile(context) ? 10 : 10,
                  letterSpacing: 1.0,
                  color: Colors.white,
                ),
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
    );
  }

  Column buildColumn2(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Filter by organisation",
            style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: Responsive.isMobile(context)
              ? double.infinity
              : media.width * 0.16,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cColor().lightblue,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Global (All Users)",
                  style: GoogleFonts.openSans(
                      color: Color(0xff6A6A6A), fontSize: 12),
                ),
              ),
              items: <String>[
                'Global(All users)',
                'Managing Directors',
                'Health & Safety'
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
    );
  }
  Column buildColumn7(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Filter By",
            style:
                GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: Responsive.isMobile(context)
              ? double.infinity
              : media.width * 0.16,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cColor().lightblue,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Global (All Users)",
                  style: GoogleFonts.openSans(
                      color: Color(0xff6A6A6A), fontSize: 12),
                ),
              ),
              items: <String>[
                'Global(All users)',
                'Managing Directors',
                'Health & Safety'
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
    );
  }

  Column buildColumn1(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Sort by",
            style:
                GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: Responsive.isMobile(context)
              ? double.infinity
              : Responsive.isTablet(context)? media.width * 0.24: media.width * 0.14,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cColor().lightblue,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Recently Added",
                  style: GoogleFonts.openSans(
                      color: Color(0xff6A6A6A), fontSize: 12),
                ),
              ),
              items: <String>[
                'Recently Added',
                'First name A-Z',
                'First name Z-A',
                "Last name A-Z",
                "Last name Z-A"
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
    );
  }

  Column buildColumn(BuildContext context, Size media) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Search User",
            style: GoogleFonts.openSans(
                fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: Responsive.isMobile(context)
              ? double.infinity
              : Responsive.isTablet(context)? media.width * 0.15: media.width * 0.28,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cColor().lightblue,
          ),
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: "(Name, Email Address, User ID)",
              hintStyle: GoogleFonts.openSans(fontSize: 12, color: Color(0xff6a6a6a)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
            ),
          ),
        ),
      ],
    );
  }
}
