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
                padding: EdgeInsets.only(top: 35, left: Responsive.isMobile(context)?20 :55),
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
          Padding(
            padding: EdgeInsets.only(
                left: Responsive.isMobile(context) ? 30 : 200,
                right: Responsive.isMobile(context) ? 30 : 200,
                top: 35),
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  Responsive.isMobile(context)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildInkWell(media),
                            SizedBox(
                              height: media.height * 0.04,
                            ),
                            buildInkWell1(media),
                            SizedBox(
                              height: media.height * 0.04,
                            ),
                            buildInkWell2(media)
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildInkWell(media),
                            buildInkWell1(media),
                            buildInkWell2(media),


                          ],
                        ),
                  SizedBox(
                    height: media.height * 0.05,
                  ),
                  Responsive.isMobile(context)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildInkWell3(media),
                            SizedBox(
                              height: media.height * 0.04,
                            ),
                            buildInkWell4(media),
                            SizedBox(
                              height: media.height * 0.04,
                            ),
                            buildInkWell6(media)
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildInkWell3(media),
                            buildInkWell4(media),
                            buildInkWell6(media)

                          ],
                        ),
                  SizedBox(
                    height: media.height * 0.05,
                  ),
                  Responsive.isMobile(context)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildInkWell5(media),
                            SizedBox(
                              height: media.height * 0.05,
                            ),

                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildInkWell5(media),
                          ],
                        )
                ],
              );
            }),
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                    fontSize: 14, fontWeight: FontWeight.bold),
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                    fontSize: 14, fontWeight: FontWeight.bold),
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                    fontSize: 14, fontWeight: FontWeight.bold),
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                    fontSize: 14, fontWeight: FontWeight.bold),
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                    fontSize: 14, fontWeight: FontWeight.bold),
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/build.png")
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
        width: Responsive.isMobile(context)
            ? media.width * 0.85
            : media.width * 0.20,
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
                "My Details",
                style: GoogleFonts.openSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/aunty.png")
            ],
          ),
        ),
      ),
    );
  }
}
