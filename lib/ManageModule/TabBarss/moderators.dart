import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../moderator_model.dart';

class Moderators extends StatefulWidget {
  const Moderators({Key? key}) : super(key: key);

  @override
  _ModeratorsState createState() => _ModeratorsState();
}

class _ModeratorsState extends State<Moderators> {
  List<Moderator> moderatorModel = [
    Moderator(
        pics: "assets/photo2.png",
        userName: "Rishant Nair",
        email: "rish@nzitg.co.nz",
        id: "U-1234567"),
  ];
  bool value = false;
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: Responsive.isMobile(context)?10 :70, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search all users",
                      style: GoogleFonts.openSans(
                          fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: media.height * 0.01,
                    ),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.40
                          : media.width * 0.25,
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
                                borderSide: BorderSide(color: Color(0xfff0f0f0))),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                borderSide: BorderSide(color: Color(0xfff0f0f0))),
                            contentPadding:
                                EdgeInsets.only(top: 15, bottom: 10, left: 10),
                            hintText: "(Name, Email Address, UserID)",
                            hintStyle: GoogleFonts.openSans(fontSize: 12)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
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
                          ? media.width * 0.26
                          : media.width * 0.15,
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
                            'A-Z',
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
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    SizedBox(
                      height: media.height * 0.01,
                    ),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.20
                          : media.width * 0.05,
                      height: Responsive.isMobile(context)?media.height * 0.052 :media.height * 0.068,
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
                            fontSize: Responsive.isMobile(context) ? 10 : 10,
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
            SizedBox(height: 20,),
            DataTable(
                dividerThickness: 0,
                horizontalMargin: 15,
                columnSpacing: Responsive.isMobile(context) ? 10 : 140,
                columns: [
                  DataColumn(
                      label: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Full Name",
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
                      label: Text("View",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 8 : 10,
                              fontWeight: FontWeight.bold, color: cColor().blue))),
                  DataColumn(
                      label: Text("Edit ",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 8 : 10,
                              fontWeight: FontWeight.bold,color: cColor().blue))),
                  DataColumn(
                      label: Text("Delete",
                          style: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 8 : 10,
                              fontWeight: FontWeight.bold,color: cColor().blue))),
                ],
                rows: moderatorModel.map((e) {
                  return DataRow(cells: [
                    DataCell(Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(e.pics, height: 25,),
                            SizedBox(
                              width: 10,
                            ),
                            Text(e.userName, style: GoogleFonts.openSans(fontSize: 8),
                            overflow: TextOverflow.ellipsis,),
                          ],
                        ),
                      ],
                    )),
                    DataCell(Text(e.email,
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 8 : 10))),
                    DataCell(Text(e.id,
                        style: GoogleFonts.openSans(
                            fontSize: Responsive.isMobile(context) ? 8 : 10))),
                    DataCell(Checkbox(
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                      value: this.value,
                    )),
                    DataCell(Checkbox(
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                      value: this.value,
                    )),
                    DataCell(Checkbox(
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                      value: this.value,
                    )),
                  ]);
                }).toList()),
          ],
        ),
      ),
    );
  }
}
