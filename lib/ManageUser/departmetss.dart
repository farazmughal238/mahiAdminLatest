import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'dep_model.dart';
class Depart extends StatefulWidget {
  const Depart({Key? key}) : super(key: key);

  @override
  _DepartState createState() => _DepartState();
}

class _DepartState extends State<Depart> {
  List<DepModel> depModel = [
    DepModel(depName: "Global(All Users)", id: "1", totalUser: "2")
  ];
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: Responsive.isMobile(context)?15 :80, top: 30),
        child: Column(
          crossAxisAlignment: Responsive.isMobile(context)? CrossAxisAlignment.center: CrossAxisAlignment.start,

          children: [
            ResponsiveRowColumn(
              rowMainAxisAlignment: MainAxisAlignment.start,
              columnMainAxisAlignment: MainAxisAlignment.center,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              rowSpacing: 30.0,
              layout: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center :MainAxisAlignment.start,
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
                      width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen:  [
                        Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                        Condition.largerThan(name: MOBILE, value: media.width * 0.25),
                        Condition.largerThan(name: TABLET, value: media.width * 0.25)
                      ]).value,
                      /*width: Responsive.isMobile(context)
                          ? media.width * 0.45
                          : media.width * 0.25,*/
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
                ),),
                ResponsiveRowColumnItem(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center :MainAxisAlignment.start,
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
                      width: ResponsiveValue(context, defaultValue: media.width * 0.25, valueWhen:  [
                        Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                        Condition.largerThan(name: MOBILE, value: media.width * 0.15),
                        Condition.largerThan(name: TABLET, value: media.width * 0.20)
                      ]).value,
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
                ),),
                ResponsiveRowColumnItem(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: Responsive.isMobile(context)? MainAxisAlignment.center :MainAxisAlignment.start,
                  children: [
                    Text(
                      "",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    SizedBox(
                      height: media.height * 0.009,
                    ),
                    Container(
                      width: ResponsiveValue(context, defaultValue: media.width * 0.07, valueWhen:  [
                        Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
                        Condition.smallerThan(name: TABLET, value: media.width * 0.1),
                        Condition.largerThan(name: DESKTOP, value: media.width * 0.050),
                      ]).value,
                      /*width: Responsive.isMobile(context)
                          ? media.width * 0.24
                          : media.width * 0.05,*/
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
                            fontSize: ResponsiveValue(context, defaultValue: 10.0, valueWhen:  [
                              Condition.smallerThan(name: MOBILE, value: 8.0),
                              Condition.largerThan(name: MOBILE, value: 12.0),
                              Condition.smallerThan(name: DESKTOP, value: 10.0),
                            ]).value,
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
                )),

              ],
            ),
            SizedBox(height: 20,),
            LayoutBuilder(builder: (BuildContext context, BoxConstraints boxConstraints){
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
                            label: Text(
                              "Department Name",
                              style: GoogleFonts.openSans(
                                  fontSize: Responsive.isMobile(context) ? 8 : 10,
                                  fontWeight: FontWeight.bold),
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
                      rows: depModel.map((e) {
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
                          DataCell(Text("Add", style: GoogleFonts.openSans(fontSize: 10, color: cColor().blue, fontWeight: FontWeight.bold),)),
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
}
