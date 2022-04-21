import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:apisd/HomeScreens/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginsidecontainer.dart';
import 'organisationregister.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({Key? key}) : super(key: key);

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Row(
            children: [
              Responsive.isMobile(context) ? Container() : Loginside(),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? media.width * 0.00
                    : media.width * 0.14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 48, top: 60),
                child: Column(
                  children: [
                    Responsive.isMobile(context)
                        ? Image.asset(
                            "assets/mahicolor.png",
                            height: 170,
                            width: 170,
                          )
                        : Container(),
                    Responsive.isMobile(context)
                        ? SizedBox(
                            height: media.height * 0.08,
                          )
                        : SizedBox(
                            height: media.height * 0.0,
                          ),
                    Text(
                      "Password Reset",
                      style: GoogleFonts.openSans(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: media.height * 0.03,
                    ),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.80
                          : media.width * 0.30,
                      height: media.height * 0.06,
                      child: TextFormField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: cColor().grey,
                          hintText: "Email",
                          hintStyle: GoogleFonts.openSans(
                              fontSize: Responsive.isMobile(context) ? 11 : 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Color(0xfff0f0f0))),
                          contentPadding:
                              EdgeInsets.only(top: 15, bottom: 10, left: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.03,
                    ),
                    Container(
                      width: Responsive.isMobile(context)
                          ? media.width * 0.80
                          : media.width * 0.30,
                      height: media.height * 0.050,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Send Password Reset Link",
                          style: GoogleFonts.openSans(
                            fontSize: 15,
                            letterSpacing: 1.0,
                          ),
                        ),
                        color: Color(0XFF0063F7),
                        textColor: Colors.white,
                        hoverColor: Colors.indigo[900],
                        highlightColor: Colors.indigo[900],
                        splashColor: Colors.indigo[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.15,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Orgreg()));
                        },
                        child: Text(
                          "New Organisation?Click here to register.",
                          style: GoogleFonts.openSans(
                              color: Color(0xff0063f7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
