import 'package:apisd/HomeScreens/Responsive.dart';
import 'package:flutter/material.dart';


class Loginside extends StatefulWidget {
  const Loginside({Key? key}) : super(key: key);

  @override
  _LoginsideState createState() => _LoginsideState();
}

class _LoginsideState extends State<Loginside> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: Color(0xff0063F7),
          height: media.height * 1.0,
          width: Responsive.isMobile(context) ? 200 : media.width * 0.40,
          child: Center(
            child: Image.asset("assets/side.png"),
          ),

        )
      ],
    );
  }
}
