import 'package:apisd/ManageDepartment/EditDepartment/edit_department_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'HomeScreens/homescreen.dart';
import 'Login&Signup/login_screen.dart';
import 'di/serviceLocator.dart';

Future<void> main() async{
  await setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EditDepartmentProvider>(
      create: (context) => EditDepartmentProvider(),
      child: MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(ClampingScrollWrapper.builder(
            context, widget!,
          ),
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(480, name: MOBILE),
                ResponsiveBreakpoint.resize(800, name: TABLET),
                ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                ResponsiveBreakpoint.resize(1700, name: 'XL'),
              ]),
          debugShowCheckedModeBanner: false,
          home: LoginScreen()
      ),
    );
  }
}
