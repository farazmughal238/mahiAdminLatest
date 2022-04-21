import 'package:apisd/HomeScreens/drawer.dart';
import 'package:apisd/HomeScreens/enduseradmin.dart';
import 'package:apisd/ManageUser/deleteUser.dart';
import 'package:apisd/SaveChanges.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HomeScreens/Responsive.dart';
import '../HomeScreens/colors.dart';
import '../delete_screen.dart';
import '../HomeScreens/homescreen.dart';
import 'delete_org.dart';

class Orgdetail extends StatefulWidget {
  const Orgdetail({Key? key}) : super(key: key);

  @override
  _OrgdetailState createState() => _OrgdetailState();
}

class _OrgdetailState extends State<Orgdetail> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool ischange = false;

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
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10, top: 10),
                                                    child: Row(
                                                      children: [
                                                        Image.asset("assets/photo.png"),
                                                        SizedBox(
                                                          width: media.width * 0.02,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              "Matt Howard",
                                                              style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold),
                                                            ),
                                                            SizedBox(
                                                              height: media.height * 0.01,
                                                            ),
                                                            Text(
                                                              "Owner & operator",
                                                              style: GoogleFonts.openSans(fontSize: 12, color: Color(0xff595959)),
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          width: media.width * 0.04,
                                                        ),
                                                        IconButton(onPressed: () {}, icon: Icon(Icons.settings))
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
                                                      fontWeight: FontWeight.bold,
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
                                                    style: GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff595959)),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.01,
                                                  ),
                                                  Text(
                                                    "O-2793645",
                                                    style: GoogleFonts.openSans(fontSize: 14, color: Color(0xff595959)),
                                                  ),
                                                  SizedBox(
                                                    height: media.height * 0.07,
                                                  ),
                                                  Divider(),
                                                  Text(
                                                    "Sign-In",
                                                    style: GoogleFonts.openSans(fontSize: 12, color: Color(0xff595959)),
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
                                                    style: GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.bold),
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
                                child: Icon(Icons.add_alert_outlined, color: Colors.white)),
                          ],
                        ),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        Text(
                          "Muhammad Hamza Tahir",
                          style: GoogleFonts.openSans(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: media.height * 0.02,
                        ),
                        Text(
                          "hamzatahir594@gmail.com",
                          style: GoogleFonts.openSans(color: Colors.white, fontSize: 15),
                        )
                      ],
                    )),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Home",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Message",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Contacts",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Core",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Checklists",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Report&Notify",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Shared",
                    style: GoogleFonts.openSans(fontSize: 12, color: Colors.black, fontWeight: FontWeight.normal),
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
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
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
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
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
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
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
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
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
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
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
                              fontSize: Responsive.isMobile(context) ? 12 : 14.5, color: Colors.white, fontWeight: FontWeight.normal),
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
                        child: Icon(Icons.add_alert_outlined, color: Colors.white)),
                    Spacer(
                      flex: 1,
                    ),
                    InkWell(onTap: () {}, child: Icon(Icons.help_outline, color: Colors.white)),
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
                                  ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeIn, reverseCurve: Curves.easeIn)),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 10 : 70, right: Responsive.isMobile(context) ? 10 : 30, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
                        },
                        child: Text(
                          "Settings",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 12 : 18, fontWeight: FontWeight.bold, color: cColor().blue),
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
                        "Organisation Details",
                        style: GoogleFonts.openSans(
                          fontSize: Responsive.isMobile(context) ? 12 : 18,
                        ),
                      ),
                    ],
                  )),
                  Container(
                      child: Row(
                    children: [
                      ischange
                          ? Container()
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  ischange = !ischange;
                                });
                              },
                              child: Text(
                                "Edit Organisation Details",
                                style: GoogleFonts.openSans(
                                    fontSize: Responsive.isMobile(context) ? 10 : 14, fontWeight: FontWeight.bold, color: cColor().blue),
                              ),
                            ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/back.png")),
                      SizedBox(
                        width: media.width * 0.02,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            "assets/back.png",
                            height: Responsive.isMobile(context) ? 10 : 0,
                          ))
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(
              height: media.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 20 : 200, top: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Organisation Name",
                              style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ? media.width * 0.42 : media.width * 0.32,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: 'NZITG',
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: ischange ? cColor().lightblue : cColor().grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: media.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Contact Phone",
                              style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ? media.width * 0.42 : media.width * 0.32,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: '09 888 9073',
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: ischange ? cColor().lightblue : cColor().grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.04,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Main Address",
                              style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ? media.width * 0.90 : media.width * 0.69,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: 'Level 10 ,21 Queen Street Commercial Bay, Auckland 0600',
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: ischange ? cColor().lightblue : cColor().grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.04,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Website",
                              style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ? media.width * 0.42 : media.width * 0.32,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: 'www.nzitg.co.nz',
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: ischange ? cColor().lightblue : cColor().grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: media.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Region",
                              style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: Responsive.isMobile(context) ? media.width * 0.42 : media.width * 0.32,
                            height: media.height * 0.06,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: 'New Zealand (\$ NZD)',
                                hintStyle: TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: ischange ? cColor().lightblue : cColor().grey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                enabledBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Logo will be resized to 80mm height',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 130,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 8.0,
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap: () {},
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black54,
                                          radius: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.all(17.0),
                                            child: Center(
                                                child: Image.asset(
                                              'assets/camera_pic.png',
                                              color: Colors.white,
                                            )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  DottedBorder(
                                    borderType: BorderType.RRect,
                                    color: Colors.grey,
                                    child: Container(height: 90, width: double.infinity, child: Image.asset('assets/logo.png')),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context) ? media.width * 0.08 : media.width * 0.20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              "Organisation ID",
                              style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 12 : 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              child: Container(
                                height: media.height * 0.06,
                                width: Responsive.isMobile(context) ? media.width * 0.30 : media.width * 0.16,
                                child: Center(
                                  child: Text("U-1234567"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: media.height * 0.05,
            ),
            ischange
                ? Padding(
                    padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 10 : 30, right: Responsive.isMobile(context) ? 10 : 30),
                    child: Responsive.isMobile(context)
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DeleteUser()));
                                },
                                child: Text(
                                  "Delete Organisation",
                                  style: GoogleFonts.openSans(fontSize: 12, color: Color(0xff0063f7), fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: media.height * 0.03,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(),
                                      width: Responsive.isMobile(context) ? media.width * 0.41 : media.width * 0.15,
                                      height: media.height * 0.058,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: cColor().blue)),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: GoogleFonts.openSans(
                                              fontSize: Responsive.isMobile(context) ? 10 : 12, letterSpacing: 1.0, color: Color(0xff0063f7)),
                                        ),
                                        color: Colors.white,
                                        textColor: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: media.width * 0.01,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(),
                                      width: Responsive.isMobile(context) ? media.width * 0.41 : media.width * 0.15,
                                      height: media.height * 0.058,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SaveChanges()));
                                        },
                                        child: Text(
                                          "Save Changes",
                                          style: GoogleFonts.openSans(
                                            fontSize: Responsive.isMobile(context) ? 10 : 12,
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
                                ),
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DeleteUser()));
                                },
                                child: Text(
                                  "Delete Organisation",
                                  style: GoogleFonts.openSans(fontSize: 12, color: Color(0xff0063f7), fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: Responsive.isMobile(context) ? media.width * 0.41 : media.width * 0.15,
                                      height: media.height * 0.058,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6), side: BorderSide(color: cColor().blue)),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "Cancel",
                                          style: GoogleFonts.openSans(
                                              fontSize: Responsive.isMobile(context) ? 10 : 12, letterSpacing: 1.0, color: Color(0xff0063f7)),
                                        ),
                                        color: Colors.white,
                                        textColor: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: media.width * 0.01,
                                    ),
                                    Container(
                                      width: Responsive.isMobile(context) ? media.width * 0.41 : media.width * 0.15,
                                      height: media.height * 0.058,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SaveChanges()));
                                        },
                                        child: Text(
                                          "Save Changes",
                                          style: GoogleFonts.openSans(
                                            fontSize: Responsive.isMobile(context) ? 10 : 12,
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
                                ),
                              )
                            ],
                          ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
