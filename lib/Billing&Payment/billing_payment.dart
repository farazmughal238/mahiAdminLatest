import 'package:apisd/Billing&Payment/billing_payment_model.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';

class Billingandpayment extends StatefulWidget {
  const Billingandpayment({Key? key}) : super(key: key);

  @override
  _BillingandpaymentState createState() => _BillingandpaymentState();
}

class _BillingandpaymentState extends State<Billingandpayment> {
  List<User> billingandpayment = [
    User(userName: "Sign-in Register", id: "M-000002", cost: "\$80.00 NZD"),
    User(
        userName: "Vehicle Inspection Checklists",
        id: "M-000005",
        cost: "Free"),
    User(userName: "Report Hazards", id: "M-000007", cost: "Free")
  ];
  int index = 1;
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
                    Text(
                      "Billing & Payments",
                      style: GoogleFonts.openSans(
                        fontSize: Responsive.isMobile(context) ? 12 : 18,
                      ),
                    )
                  ],
                )),
                Responsive.isMobile(context)
                    ? PopupMenuButton(
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
                              PopupMenuItem(
                                child: Text(
                                  "View Invoice",
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.bold,
                                      color: cColor().blue,
                                      fontSize: 12),
                                ),
                                value: 2,
                              )
                            ])
                    : Container(
                        width: media.width * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "View Invoice",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                  color: cColor().blue,
                                  fontSize: 12),
                            ),
                            Text(
                              "Manage payment",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                  color: cColor().blue,
                                  fontSize: 12),
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
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 10 : 70, top: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    Text("gf",
                        style: GoogleFonts.openSans(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent)),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.30
                          : media.width * 0.16,
                      height: media.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        color: cColor().lightblue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Users License",
                          style: GoogleFonts.openSans(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cost Per License / Month",
                      style: GoogleFonts.openSans(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.33
                          : media.width * 0.14,
                      height: media.height * 0.06,
                      color: cColor().lightblue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "\$10.00 NZD",
                          style: GoogleFonts.openSans(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: Responsive.isMobile(context) ? 25 : 45),
                      child: Text(
                        "Quantity",
                        style: GoogleFonts.openSans(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.30
                          : media.width * 0.16,
                      height: media.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: cColor().lightblue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Responsive.isMobile(context)
                                ? media.width * 0.25
                                : media.width * 0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/minus.png",
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "500.000",
                                  style: GoogleFonts.openSans(
                                      fontSize:
                                          Responsive.isMobile(context) ? 8 : 12,
                                      color: Color(0xff0063f7)),
                                ),
                                Image.asset(
                                  "assets/plus.png",
                                  height: 20,
                                  width: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: media.width * 0.015,
                ),
                Column(
                  children: [
                    Text(""),
                    Responsive.isMobile(context)
                        ? Container()
                        : buildContainer(context, media),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: media.height * 0.01,
          ),
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: buildContainer(context, media),
                )
              : Container(),
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 10 : 70, top: 30),
            child: DataTable(
                dividerThickness: 0,
                horizontalMargin: 15,

                columnSpacing: Responsive.isMobile(context) ? 40 : 420,
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
                ],
                rows: billingandpayment.map((e) {
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
                                fontSize:
                                    Responsive.isMobile(context) ? 8 : 10)),
                      ],
                    )),
                    DataCell(Text(e.id,
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 8 : 10))),

                    DataCell(Text(e.cost,
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 8 : 10))),
                  ]);
                }).toList()),
          )
        ],
      ),
    );
  }

  Container buildContainer(BuildContext context, Size media) {
    return Container(
      width: Responsive.isMobile(context)
          ? media.width * 0.25
          : media.width * 0.06,
      height: Responsive.isMobile(context)? media.height * 0.1:media.height * 0.06,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
