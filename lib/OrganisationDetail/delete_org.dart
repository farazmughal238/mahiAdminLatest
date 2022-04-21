import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../delete_screen.dart';
class DeleteOrg extends StatefulWidget {
  const DeleteOrg({Key? key}) : super(key: key);

  @override
  _DeleteOrgState createState() => _DeleteOrgState();
}

class _DeleteOrgState extends State<DeleteOrg> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Container(
        height:
        Responsive.isMobile(context)
            ? media.height * 0.7
            : media.height * 2.0,
        width:
        Responsive.isMobile(context)
            ? media.width * 0.70
            : media.width * 1.2,
        decoration: BoxDecoration(
          color: Colors.white
              .withOpacity(0.9),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Text(
                "You are about to delete this organisation",
                style:
                GoogleFonts.openSans(
                    fontSize: 22),
              ),
              SizedBox(
                height:
                media.height * 0.03,
              ),
              Container(
                width: media.width * 0.65,
                child: Text(
                  "Deleting your organisation will remove all data, associated users and settings. Are you sure you want to proceed. This action cannot be undone and you will be signed out immediately.",
                  style: GoogleFonts
                      .openSans(
                      fontSize: 18,
                      color: Color(
                          0xff6a6a6a)),
                ),
              ),
              SizedBox(
                height:
                media.height * 0.03,
              ),
              Text(
                "Please enter your account password to proceed",
                style:
                GoogleFonts.openSans(
                    fontSize: 10),
              ),
              SizedBox(
                height:
                media.height * 0.01,
              ),
              Container(
                width: Responsive
                    .isMobile(context)
                    ? media.width * 0.45
                    : media.width * 0.35,
                color: cColor().lightblue,
                child: TextFormField(
                  cursorColor:
                  Colors.black,
                  decoration:
                  InputDecoration(
                    filled: true,
                    fillColor: cColor().grey,
                    border:
                    OutlineInputBorder(
                      borderRadius:
                      BorderRadius
                          .circular(
                          5),
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius
                            .all(Radius
                            .circular(
                            5)),
                        borderSide: BorderSide(
                            color: Color(
                                0xfff0f0f0))),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius
                            .all(Radius
                            .circular(
                            5)),
                        borderSide: BorderSide(
                            color: Color(
                                0xfff0f0f0))),
                    contentPadding:
                    EdgeInsets.only(
                        top: 15,
                        bottom: 10),
                  ),
                ),
              ),
              SizedBox(
                height:
                media.height * 0.03,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .center,
                crossAxisAlignment:
                CrossAxisAlignment
                    .center,
                children: [
                  Container(
                    width: Responsive
                        .isMobile(
                        context)
                        ? media.width *
                        0.41
                        : media.width *
                        0.15,
                    height: media.height *
                        0.058,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius
                              .circular(
                              6),
                          side: BorderSide(
                              color: cColor()
                                  .blue)),
                      onPressed: () {
                        Navigator.of(
                            context)
                            .push(MaterialPageRoute(
                            builder:
                                (context) =>
                                Rem()));
                      },
                      child: Text(
                        "Delete Organisation",
                        style: GoogleFonts.openSans(
                            fontSize:
                            Responsive.isMobile(
                                context)
                                ? 10
                                : 12,
                            letterSpacing:
                            1.0,
                            color: Color(
                                0xff0063f7)),
                      ),
                      color: Colors.white,
                      textColor:
                      Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: media.width *
                        0.01,
                  ),
                  Container(
                    width: Responsive
                        .isMobile(
                        context)
                        ? media.width *
                        0.41
                        : media.width *
                        0.15,
                    height: media.height *
                        0.058,
                    child: RaisedButton(
                      shape:
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius
                            .circular(
                            6),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts
                            .openSans(
                          fontSize: Responsive
                              .isMobile(
                              context)
                              ? 10
                              : 12,
                          letterSpacing:
                          1.0,
                          color: Colors
                              .white,
                        ),
                      ),
                      color: Color(
                          0xff0063f7),
                      textColor:
                      Colors.white,
                      hoverColor: Colors
                          .indigo[900],
                      highlightColor:
                      Colors.indigo[
                      900],
                      splashColor: Colors
                          .indigo[900],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
