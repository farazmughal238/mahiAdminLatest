import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget half;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.half,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
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
        return mobile;
      } else if (constraints.maxWidth < 800) {
        return half;
      } else  {
        return desktop;
      }
      return Container();
    });
  }
}