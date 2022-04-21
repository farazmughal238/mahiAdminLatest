import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../HomeScreens/Responsive.dart';
import '../../HomeScreens/colors.dart';
import '../../HomeScreens/homescreen.dart';
import '../app_tab.dart';
import '../manage_module.dart';
import '../manage_module_model.dart';
import '../module_store.dart';

class LocalIndsModel {
  String? name;
  Key? key;
  bool? isSelected;
  String? id;

  LocalIndsModel({this.name, this.key, this.id, this.isSelected});

  LocalIndsModel.empty({this.key});

  @override
  String toString() {
    return 'LocalIndsModel{name: $name, key: $key, isSelected: $isSelected, id: $id}';
  }
}

class ManageModuleByDoneButton extends StatefulWidget {
  const ManageModuleByDoneButton({Key? key}) : super(key: key);

  @override
  State<ManageModuleByDoneButton> createState() => _ManageModuleByDoneButtonState();
}

class _ManageModuleByDoneButtonState extends State<ManageModuleByDoneButton> {
  List<Module> modules = [
    Module(userName: "Sign-in Register", id: "M-000002", cost: "core"),
  ];

  List<String> names = [
    "Trades & Construction",
    "Transport & Logistics",
    "Hospitality",
    "Retail",
    "Corporate",
    "Education",
    "Hazardous",
    "Healthcare & Medical",
    "Manufacturing",
    "Property",
    "I.Technology",
    "Events & Entertainment",
    "Agriculture"
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 45, right: Responsive.isMobile(context) ? 10 : 45, top: 10),
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
                          "Setting",
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
                      InkWell(
                        child: Text(
                          "Module Store",
                          style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 12 : 18,
                          ),
                        ),
                      )
                    ],
                  )),
                  Container(
                      //width: media.width * 0.15,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ManageModules()));
                        },
                        child: Text(
                          "Finish Adding Modules",
                          style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: cColor().blue, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset("assets/back.png"))
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 85, right: Responsive.isMobile(context) ? 10 : 85, top: 10),
              child: Text('Filter By Industry'),
            ),
            Padding(
                padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 85, right: Responsive.isMobile(context) ? 10 : 85, top: 10),
                child: Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 5,
                  children: names
                      .map(
                        (e) => Wrap(
                          children: [
                            Chip(
                              //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: EdgeInsets.all(8.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(color: Color(0xff4791FF)),
                              ),
                              backgroundColor: Colors.white,
                              labelStyle: GoogleFonts.openSans(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                              label: Text(
                                e,
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 85, right: Responsive.isMobile(context) ? 15 : 85),
              child: Responsive.isMobile(context)
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Search by Module Name or ID",
                                  style: GoogleFonts.openSans(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: Responsive.isMobile(context) ? double.infinity : media.width * 0.27,
                                height: media.height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: cColor().lightblue,
                                ),
                                child: TextFormField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    hintStyle: GoogleFonts.openSans(fontSize: 12, color: Color(0xff6a6a6a)),
                                    suffixIcon: Icon(Icons.search_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                    contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Filter By Type",
                                  style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: Responsive.isMobile(context) ? double.infinity : media.width * 0.13,
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
                                        style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 12),
                                      ),
                                    ),
                                    items: <String>['All', 'Core', 'Checklists', 'Report & Notify'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(
                                          value,
                                          style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (_) {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(""),
                            ),
                            buildContainer(context, media),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Search by Module Name or ID",
                                style: GoogleFonts.openSans(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: Responsive.isMobile(context) ? media.width * 0.43 : media.width * 0.27,
                              height: media.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: cColor().lightblue,
                              ),
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: GoogleFonts.openSans(fontSize: 12, color: Color(0xff6a6a6a)),
                                  suffixIcon: Icon(Icons.search_outlined),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                  enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
                                  contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
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
                                style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              width: Responsive.isMobile(context) ? double.infinity : media.width * 0.13,
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
                                      style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 12),
                                    ),
                                  ),
                                  items: <String>['All', 'Core', 'Checklists', 'Report & Notify'].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(
                                        value,
                                        style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
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
                            buildContainer(context, media),
                          ],
                        ),
                      ],
                    ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 85, right: Responsive.isMobile(context) ? 15 : 85),
              child: Responsive.isMobile(context)
                  ? Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            height: 140,
                            //width: 220,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/sign_in_pic.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Sign-in Register',
                                              style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                          Text('Core', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                            height: 24,
                                            width: 60,
                                            child: Center(child: Text('Added', style: GoogleFonts.openSans(color: Colors.white, fontSize: 8))),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                            height: 36,
                                            width: 76,
                                            child: Center(
                                                child: Text('View',
                                                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            height: 140,
                            //width: 220,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/report_hazard_pic.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Report Hazard',
                                              style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                          Text('Report & Notify', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                            height: 24,
                                            width: 60,
                                            child: Center(child: Text('Added', style: GoogleFonts.openSans(color: Colors.white, fontSize: 8))),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                            height: 36,
                                            width: 76,
                                            child: Center(
                                                child: Text('View',
                                                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            height: 140,
                            //width: 220,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/car_pic.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Vehicle Inspection \nChecklist',
                                              style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                          Text('CheckList', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                            height: 24,
                                            width: 60,
                                            child: Center(child: Text('Added', style: GoogleFonts.openSans(color: Colors.white, fontSize: 8))),
                                          ),
                                          Spacer(),
                                          Container(
                                            decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                            height: 36,
                                            width: 76,
                                            child: Center(
                                                child: Text('View',
                                                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            height: 140,
                            //width: 220,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('assets/projects(trades)_pic.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Projects (Trades)',
                                              style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                          Text('Core', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                        ],
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            //decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                            height: 24,
                                            width: 60,
                                          ),
                                          Spacer(),
                                          InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => AppTab(fromEdit: false,)));
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                              height: 36,
                                              width: 76,
                                              child: Center(
                                                  child: Text('View',
                                                      style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  : Row(
                      children: [
                        Container(
                          height: 140,
                          width: 220,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/sign_in_pic.png'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Sign-in Register',
                                            style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                        Text('Core', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                          height: 24,
                                          width: 60,
                                          child: Center(child: Text('Added', style: GoogleFonts.openSans(color: Colors.white, fontSize: 8))),
                                        ),
                                        Spacer(),
                                        Container(
                                          decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                          height: 36,
                                          width: 76,
                                          child: Center(
                                              child: Text('View',
                                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 140,
                          width: 220,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/report_hazard_pic.png'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Report Hazard',
                                            style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                        Text('Report & Notify', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                          height: 24,
                                          width: 60,
                                          child: Center(child: Text('Added', style: GoogleFonts.openSans(color: Colors.white, fontSize: 8))),
                                        ),
                                        Spacer(),
                                        Container(
                                          decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                          height: 36,
                                          width: 76,
                                          child: Center(
                                              child: Text('View',
                                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 140,
                          width: 220,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/car_pic.png'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Vehicle Inspection \nChecklist',
                                            style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                        Text('CheckList', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                          height: 24,
                                          width: 60,
                                          child: Center(child: Text('Added', style: GoogleFonts.openSans(color: Colors.white, fontSize: 8))),
                                        ),
                                        Spacer(),
                                        Container(
                                          decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                          height: 36,
                                          width: 76,
                                          child: Center(
                                              child: Text('View',
                                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 140,
                          width: 220,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/projects(trades)_pic.png'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Projects (Trades)',
                                            style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 12)),
                                        Text('Core', style: GoogleFonts.openSans(color: Colors.grey, fontSize: 10))
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [

                                        Container(
                                          //decoration: BoxDecoration(color: Color(0xFFF00AC54), borderRadius: BorderRadius.circular(2)),
                                          height: 24,
                                          width: 60,
                                        ),
                                        Spacer(),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => AppTab(fromEdit: false,)));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(5)),
                                            height: 36,
                                            width: 76,
                                            child: Center(
                                                child: Text('View',
                                                    style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(BuildContext context, Size media) {
    return Container(
      width: Responsive.isMobile(context) ? double.infinity : media.width * 0.06,
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
