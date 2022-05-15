import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
import '../ExtrenalAccess/external_access.dart';
import '../HomeScreens/homescreen.dart';
import 'app_tab.dart';
import 'manage_module_model.dart';
import 'module_store.dart';

class ManageModules extends StatefulWidget {
  const ManageModules({Key? key}) : super(key: key);

  @override
  _ManageModulesState createState() => _ManageModulesState();
}

class _ManageModulesState extends State<ManageModules> {
  List<Module> modules = [
    Module(userName: "Sign-in Register", id: "M-000002", cost: "core"),
  ];
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
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
                    InkWell(
                      child: Text(
                        "Manage Modules",
                        style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 12 : 18,
                        ),
                      ),
                    )
                  ],
                )),
                if (Responsive.isMobile(context))
                  PopupMenuButton(
                      onSelected: (value) {
                        if (value == 1) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ModuleStore()));
                        }
                      },
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text(
                                "Manage payment",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    color: cColor().blue,
                                    fontSize: 12),
                              ),
                              value: 1,
                            ),
                          ])
                else
                  Container(
                      //width: media.width * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ModuleStore()));
                            },
                            child: Text(
                              "Add new Modules",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                  color: cColor().blue,
                                  fontSize: 12),
                            ),
                          ),
                          SizedBox(width: 20,),
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
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 15 : 85,
                right: Responsive.isMobile(context) ? 0 : 85),
            child: Wrap(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Search by Module Name or ID",
                        style: GoogleFonts.openSans(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.43
                          : media.width * 0.27,
                      height: media.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cColor().lightblue,
                      ),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 12, color: Color(0xff6a6a6a)),
                          suffixIcon: Icon(Icons.search_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          contentPadding:
                              EdgeInsets.only(top: 15, bottom: 10, left: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: media.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Filter By Type",
                        style: GoogleFonts.openSans(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.43
                          : media.width * 0.16,
                      height: media.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: cColor().lightblue,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          dropdownColor: cColor().lightblue,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "All",
                              style: GoogleFonts.openSans(
                                  color: Color(0xff6A6A6A), fontSize: 12),
                            ),
                          ),
                          items: <String>[
                            'All',
                            'Core',
                            'Checklists',
                            'Report & Notify'
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
                  width: media.width * 0.02,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(""),
                    ),
                    Responsive.isMobile(context)
                        ? Container()
                        : buildContainer(context, media),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 10 : 70, top: 30),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints boxConstraints)
                {
              return ConstrainedBox(
                constraints: BoxConstraints(minWidth: boxConstraints.maxWidth),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      dividerThickness: 0,
                      horizontalMargin: 15,
                      columnSpacing: boxConstraints.maxWidth/4,
                      columns: [
                        DataColumn(
                            label: Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text(
                                "Module Name",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                        DataColumn(
                            label: Text("Module ID",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text("Module Cost/Month",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold))),
                        DataColumn(
                            label: Text("Mod",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 8 : 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.transparent))),
                      ],
                      rows: modules.map((e) {
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
                              Text(e.userName,
                                  style: GoogleFonts.openSans(
                                      fontSize: Responsive.isMobile(context) ? 8 : 10)),
                            ],
                          )),
                          DataCell(Text(e.id,
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(Text(e.cost,
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AppTab(fromEdit: true,)));
                              },
                              child: Image.asset(
                                "assets/edit.png",
                                height: 17,
                              ))),
                        ]);
                      }).toList()),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Container buildContainer(BuildContext context, Size media) {
    return Container(
      width: Responsive.isMobile(context)
          ? media.width * 0.25
          : media.width * 0.06,
      height: media.height * 0.05,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {},
        child: Text(
          "Apply",
            style: GoogleFonts.openSans(
            fontSize: Responsive.isMobile(context) ? 12 : 12,
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
    );
  }
}
