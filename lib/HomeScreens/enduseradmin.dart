import 'package:apisd/ManageUser/manage_user.dart';
import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/Billing&Payment/billing_payment.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:apisd/ExtrenalAccess/external_access.dart';
import 'package:apisd/ManageModule/manage_module.dart';
import 'package:apisd/HomeScreens/responsive_new.dart';
import 'package:apisd/ManageDepartment/manage_department.dart';
import 'package:apisd/MyDetails/my_details.dart';
import 'package:apisd/OrganisationDetail/orgdetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Enduser extends StatefulWidget {
  const Enduser({Key? key}) : super(key: key);

  @override
  _EnduserState createState() => _EnduserState();
}

class _EnduserState extends State<Enduser> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35, left: Responsive.isMobile(context)?20 :55, bottom: 20),
                child: Text(
                  "Settings",
                  style: GoogleFonts.openSans(
                      fontSize: 18,
                      color: cColor().blue,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Column(
              children: [
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  rowPadding: const EdgeInsets.all(60.0),
                  //columnPadding: const EdgeInsets.all(20),
                  columnSpacing: 20.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                        child: buildInkWell(media),),
                    ResponsiveRowColumnItem(
                        child: buildInkWell1(media)),
                    ResponsiveRowColumnItem(
                        child: buildInkWell2(media)),
                  ],
                ),
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  rowPadding: const EdgeInsets.symmetric(horizontal: 60.0, ),
                  columnPadding: const EdgeInsets.all(20),
                  columnSpacing: 20.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: buildInkWell3(media),),
                    ResponsiveRowColumnItem(
                        child: buildInkWell4(media),),
                    ResponsiveRowColumnItem(
                        child: buildInkWell6(media)),
                  ],
                ),
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  rowPadding: const EdgeInsets.all(60),
                  //columnPadding: const EdgeInsets.all(20),
                  columnSpacing: 20.0,
                  layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)? ResponsiveRowColumnType.COLUMN: ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: buildInkWell5(media)),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }

  InkWell buildInkWell6(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Externalaccess()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "External Access",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/third.png")
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildInkWell5(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Billingandpayment()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Billing & Payments",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/group.png")
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildInkWell4(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ManageModules()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Manage Modules",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/manage.png")
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildInkWell3(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ManageUser()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Manage Users",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/team.png")
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildInkWell2(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Manage_department()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Manage Departments",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/people.png")
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildInkWell1(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Orgdetail()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Organisation Details",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/build.png",)
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildInkWell(Size media) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Details()));
      },
      child: Container(
        width: ResponsiveValue(context, defaultValue: media.width * 0.85, valueWhen:  [
          Condition.smallerThan(name: MOBILE, value: media.width * 0.85),
          Condition.largerThan(name: TABLET, value: media.width * 0.20)
        ]).value,
        height: media.height * 0.17,
        /*width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,*/
        //height: media.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffe9f0f4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Details",
                style: GoogleFonts.openSans(
                    fontSize: ResponsiveValue(context, defaultValue: 16.0, valueWhen:  [
                      Condition.smallerThan(name: MOBILE, value: 12.0),
                      Condition.largerThan(name: MOBILE, value: 12.0),
                      Condition.smallerThan(name: DESKTOP, value: 16.0),
                    ]).value,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/aunty.png")
            ],
          ),
        ),
      ),
    );
  }
}
