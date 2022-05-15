import 'package:apisd/ApiServices/error_handler.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/Login&Signup/signup_screen.dart';
import 'package:apisd/Mixin/stateBaseMixin.dart';
import 'package:apisd/data/RemoteDataSource/User/UserApiService.dart';
import 'package:apisd/di/serviceLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../ApiServices/Clients/IApiClient.dart';
import '../HomeScreens/Responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with BaseMixin {
  late IApiClient iApiClient;
  final api = locator<UserApiService>();
  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late String email;
  late String password;
  bool isLoading = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /*@override
  void initState() {
    userRepo = UserRepo.user(this);
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) async {
      if(mounted){
        await pref.init();
      }
      if(pref.isTokenAvailable()){
        print('HomePage');
        //await Future.delayed(const Duration(seconds: 0), () {});
        Navigator.of(context).push( MaterialPageRoute(builder: (context) => HomePage(token: _userModel.user?.token,)));
      }
    });
    //pref.isTokenAvailable()? Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())) : Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Form(
              key: _formKey,
              child: ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    child: Expanded(
                      flex: ResponsiveValue(context,
                          defaultValue: 4,
                          valueWhen: [Condition.smallerThan(name: MOBILE, value: 2), Condition.largerThan(name: TABLET, value: 3)]).value as int,
                      child: Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height / 2.5,
                              ),
                              Center(child: Image.asset("assets/mahi_pic.png")),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  children: [
                                    Text(
                                      'mahi',
                                      style: TextStyle(color: Colors.white, fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Icon(
                                      Icons.volume_up,
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '1. (verb)(-a,-ngia) to work, do, perform, make, accomplish, practise, raise(money)',
                                    style: TextStyle(color: Colors.white, fontSize: 17),
                                  )),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Expanded(
                      flex: ResponsiveValue(context,
                          defaultValue: 4,
                          valueWhen: [Condition.smallerThan(name: MOBILE, value: 2), Condition.largerThan(name: TABLET, value: 5)]).value as int,
                      child: Container(
                        color: Colors.white,
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Text(
                                'Mahi Workplace (Admin)',
                                style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffF5F5F5),
                                ),
                                width: 380,
                                //height: 35,
                                child: TextFormField(
                                  controller: emailController,
                                  validator: (value) => value!.isEmpty || !value.contains("@") ? "enter a valid email" : null,
                                  onSaved: (value) {
                                    setState(() {
                                      email = value!;
                                    });
                                  },
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Color(0xffF5F5F5), width: 2),
                                    ),
                                    focusedBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Color(0xffF5F5F5), width: 2),
                                    ),
                                    errorBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Colors.red, width: 2),
                                    ),
                                    focusedErrorBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Colors.red, width: 2),
                                    ),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                    hintText: 'Email',
                                    hintStyle: TextStyle(fontSize: 12),
                                    labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffF5F5F5),
                                ),
                                width: 380,
                                //height: 35,
                                child: TextFormField(
                                  controller: passwordController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Required Field";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (value) {
                                    setState(() {
                                      password = value!;
                                    });
                                  },
                                  style: TextStyle(color: Colors.black),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Color(0xffF5F5F5), width: 2),
                                    ),
                                    focusedBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Color(0xffF5F5F5), width: 2),
                                    ),
                                    errorBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Colors.red, width: 2),
                                    ),
                                    focusedErrorBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                      borderSide: BorderSide(color: Colors.red, width: 2),
                                    ),
                                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(fontSize: 12),
                                    labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              isLoading
                                  ? Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.blue,
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () async {
                                        if(_formKey.currentState!.validate()){
                                          try{
                                            await api.login(email: emailController.text, password: passwordController.text, context: context);
                                          }catch(e){
                                            String error = ErrorMessage.fromError(getFailure(e as Exception)).message;
                                            showInSnackBar(error);
                                          }
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(color: Color(0xff0063F7), borderRadius: BorderRadius.circular(5)),
                                        width: 380,
                                        height: 40,
                                        child: Center(
                                            child: Text(
                                          'Log in',
                                          style: GoogleFonts.openSans(fontSize: 14, color: Color(0xffFFFFFF)),
                                        )),
                                      ),
                                    ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                                  },
                                  child: Text('Register Account? Sign up')),
                              Spacer(),
                              Image.asset('assets/cynro_pic.png'),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  showInSnackBar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 5),
    );
    scaffoldKey.currentState!.showSnackBar(snackBar);
  }
}
