
import 'dart:math';

import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/ManageDepartment/EditDepartment/edit_department_provider.dart';
import 'package:apisd/ManageDepartment/users_Model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:provider/provider.dart';

class EditUser extends StatefulWidget {
  const EditUser({Key? key}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {

  bool checkValue = false;

  List<UserModel> newUsers = [
    UserModel(
        fullName: "Rishant Niar",
        emailAddress: "rish@nztig.co.nz",
        id: "U-1234567",
        userType: "Department Manager",
        checkBoxValue: false,
        threeDots: Icon(Icons.more_vert)),

    UserModel(
        fullName: "Akmal Brothers",
        emailAddress: "akmal.co.nz",
        id: "U-837467",
        userType: "Manager",
        checkBoxValue: false,
        threeDots: Icon(Icons.more_vert)),

    UserModel(
        fullName: "British Ambassador",
        emailAddress: "british.co.nz",
        id: "U-73847267",
        userType: "Ambassador",
        checkBoxValue: false,
        threeDots: Icon(Icons.more_vert)),
  ];

  List<UserModel> newUsers1 = [];

  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<EditDepartmentProvider>(context);
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: Responsive.isMobile(context) ? 15 : 60, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Responsive.isMobile(context)
                  ? Column(
                children: [
                  Row(
                    children: [
                      buildColumn(media, context),
                      SizedBox(
                        width: 10,
                      ),
                      buildColumn1(media, context),
                    ],
                  ),
                  Row(
                    children: [
                      buildColumn2(media, context),
                      SizedBox(
                        width: 10,
                      ),
                      buildColumn3(media, context),
                    ],
                  )
                ],
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildColumn(media, context),
                  SizedBox(
                    width: 10,
                  ),
                  buildColumn1(media, context),
                  SizedBox(
                    width: 10,
                  ),
                  buildColumn2(media, context),
                  SizedBox(
                    width: 10,
                  ),
                  buildColumn3(media, context),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0),
                    child: buildColumn4(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              DataTable(
                  dividerThickness: 0,
                  horizontalMargin: 15,
                  columnSpacing: Responsive.isMobile(context) ? 20 : 200,
                  columns: [
                    DataColumn(
                        label: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "Full Name",
                            style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10, fontWeight: FontWeight.bold),
                          ),
                        )),
                    DataColumn(
                        label: Text("Email Address",
                            style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("", style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("User Type",
                            style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text("", style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10, fontWeight: FontWeight.bold))),
                  ],
                  rows: newUsers.map((e) {
                    return DataRow(
                        cells: [
                          DataCell(
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/photo.png",
                                    height: Responsive.isMobile(context) ? 25 : 0,
                                  ),
                                  SizedBox(
                                    width: Responsive.isMobile(context) ? 1 : 15,
                                  ),
                                  Text(e.fullName, style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10)),
                                ],
                              )
                          ),
                          DataCell(Text(e.emailAddress, style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(Text(e.id, style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10))),
                          DataCell(Text(e.userType, style: GoogleFonts.openSans(fontSize: Responsive.isMobile(context) ? 8 : 10))),
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
                                    if(e.checkBoxValue == true){
                                      bloc.checkingValue(false);
                                    }
                                    else{
                                      bloc.checkingValue(true);
                                    }
                                    //isSelected = e.checkBoxValue;
                                    //checkingValueTrue();
                                  });
                                },
                              ),
                              PopupMenuButton(
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      child: Text(
                                        "Remove",
                                        style: GoogleFonts.openSans(fontSize: 12),
                                      ),
                                      value: 1,
                                    ),
                                  ]),
                            ],
                          )),
                        ]);
                  }).toList()),
            ],
          ),
        ),
      ),
    );
  }

  Column buildColumn4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Total Users",
          style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 14,
        ),
        Text(
          "2",
          style: GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.bold, color: cColor().blue),
        ),
      ],
    );
  }

  Column buildColumn3(Size media, BuildContext context) {
    return Column(
      children: [
        Text(
          "",
          style: TextStyle(color: Colors.transparent),
        ),
        SizedBox(
          height: media.height * 0.01,
        ),
        Container(
          width: Responsive.isMobile(context) ? media.width * 0.44 : media.width * 0.05,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: cColor().blue,
          ),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
    );
  }

  Column buildColumn2(Size media, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "User Type",
          style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: media.height * 0.01,
        ),
        Container(
          width: Responsive.isMobile(context) ? media.width * 0.44 : media.width * 0.18,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: cColor().lightblue,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Global (All users)",
                  style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
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
                    style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
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

  Column buildColumn1(Size media, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sort by",
          style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: media.height * 0.01,
        ),
        Container(
          width: Responsive.isMobile(context) ? media.width * 0.44 : media.width * 0.15,
          height: media.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: cColor().lightblue,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              hint: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "Recently Added",
                  style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
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
                    style: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
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

  Column buildColumn(Size media, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search current user",
          style: GoogleFonts.openSans(fontSize: 10, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: media.height * 0.01,
        ),
        Container(
          width: Responsive.isMobile(context) ? media.width * 0.44 : media.width * 0.25,
          height: media.height * 0.05,
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
              focusedBorder:
              const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              enabledBorder:
              const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)), borderSide: BorderSide(color: Color(0xfff0f0f0))),
              contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 10),
              hintText: "(Name, Email Address, User ID)",
              hintStyle: GoogleFonts.openSans(color: Color(0xff6A6A6A), fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
