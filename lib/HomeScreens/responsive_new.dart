import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobiles;
  final Widget half;
  final Widget desktops;

  const ResponsiveWidget(
      {Key? key,
      required this.mobiles,
      required this.half,
      required this.desktops})
      : super(key: key);
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;
  static bool isHalf(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 700) {
        return mobiles;
      } else if (constraints.maxWidth < 1000) {
        return half;
      } else if (constraints.maxWidth > 1100) {
        return desktops;
      }
      return Container();
    });
  }
}
