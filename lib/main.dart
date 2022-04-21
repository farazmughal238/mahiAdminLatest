import 'package:apisd/ManageDepartment/EditDepartment/edit_department_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'HomeScreens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EditDepartmentProvider>(
      create: (context) => EditDepartmentProvider(),
      child: MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(ClampingScrollWrapper.builder(context, widget!),
              breakpoints: [
                ResponsiveBreakpoint.resize(350, name: MOBILE),
                ResponsiveBreakpoint.autoScale(600, name: TABLET),
                ResponsiveBreakpoint.resize(800, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
              ]),
          debugShowCheckedModeBanner: false,
          home: MyHomePage()
      ),
    );
  }
}
