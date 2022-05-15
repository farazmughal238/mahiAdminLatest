import 'dart:typed_data';
import 'dart:html' as html;

import 'package:apisd/ApiServices/Clients/IApiClient.dart';
import 'package:apisd/ApiServices/error_handler.dart';
import 'package:apisd/Domain/model/create_user_params.dart';
import 'package:apisd/Domain/usecase/create_user.dart';
import 'package:apisd/HomeScreens/homescreen.dart';
import 'package:apisd/Login&Signup/login_screen.dart';
import 'package:apisd/Mixin/stateBaseMixin.dart';
import 'package:apisd/Utils/utils.dart';
import 'package:apisd/data/Model/userModel.dart';
import 'package:apisd/data/RemoteDataSource/User/IUserApiService.dart';
import 'package:apisd/di/serviceLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:mime_type/mime_type.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:image_picker/image_picker.dart';

import '../CreateAccount/login.dart';
import '../HomeScreens/Responsive.dart';
import '../data/RemoteDataSource/User/UserApiService.dart';
import 'package:path/path.dart' as Path;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> with BaseMixin {
  late IApiClient iApiClient;
  final api = locator<UserApiService>();
  UserModelResponse userModelResponse = UserModelResponse();

  final _formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late String email;
  late String password;
  late String firstName;
  late String lastName;
  late String jobTitle;
  late String mainContact;
  late String secondaryContact;
  late String confirmPassword;
  html.File? _cloudFile;
  var _fileBytes;
  Image? _imageWidget;
  String? imageName;

  Future<void> getMultipleImageInfos() async {
    var mediaData = await ImagePickerWeb.getImageInfo;
    String? mimeType = mime(Path.basename(mediaData!.fileName!));
    html.File? mediaFile = html.File(mediaData.data!, mediaData.fileName!, {'type': mimeType});

    setState(() {
      _cloudFile = mediaFile;
      _fileBytes = mediaData.data;
      _imageWidget = Image.memory(mediaData.data!);
      imageName = mediaData.fileName;
      print(_imageWidget);
      print(imageName);
    });
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController userTypeController = TextEditingController();
  TextEditingController mainContactController = TextEditingController();
  TextEditingController secondaryContactController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isLoading = false;
  Uint8List? _image;
  XFile? _file;

  selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  selectImageFile() async {
    final ImagePicker _imagePicker = ImagePicker();
    _file = await _imagePicker.pickImage(source: ImageSource.gallery);
    print('file: ${_file!.name}');
  }

  pickImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();
    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print('No Image Selected');
    }
  }

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
      body: Form(
        key: _formKey,
        child: ResponsiveRowColumn(
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP) ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
          children: [
            Responsive.isDesktop(context)
                ? ResponsiveRowColumnItem(
              columnFlex: ResponsiveValue(context,
                  defaultValue: 4,
                  valueWhen: [Condition.smallerThan(name: MOBILE, value: 2), Condition.largerThan(name: TABLET, value: 6)]).value as int,
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
                    )
                  )
                : ResponsiveRowColumnItem(
                    child: Container(),
                  ),
            ResponsiveRowColumnItem(
              child: Expanded(
                flex: 2,
                child: Container(
                  //height: size.height,
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 20 : 300),
                    //shrinkWrap: true,
                    //scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Spacer(),
                      Center(
                        child: Text(
                          'Mahi Workplace (Admin)',
                          style: GoogleFonts.openSans(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.bottomCenter,
                        children: [
                          CircleAvatar(
                            radius: Responsive.isDesktop(context) ? 50 : 70,
                            backgroundImage: _imageWidget == null ? AssetImage("assets/photo2.png") as ImageProvider : MemoryImage(_fileBytes),
                            backgroundColor: Colors.black.withOpacity(0.7),
                          ),
                          Positioned(
                            top: Responsive.isDesktop(context) ? 70 : 100,
                            child: CircleAvatar(
                              radius: 25,
                              //backgroundImage: _image == null? null:  MemoryImage(_image!),
                              backgroundColor: Colors.black.withOpacity(0.7),
                              child: IconButton(
                                  onPressed: () {
                                    getMultipleImageInfos();
                                    //selectImageFile();
                                    //selectImage();
                                  },
                                  icon: Icon(
                                    Icons.add_a_photo_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
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
                          controller: firstNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else {
                              return null;
                            }
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
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                            hintText: 'First Name',
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
                          controller: lastNameController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            setState(() {
                              lastName = value!;
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
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                            hintText: 'Last Name',
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
                          controller: jobTitleController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else {
                              return null;
                            }
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
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                            hintText: 'Job Title',
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
                          controller: mainContactController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else {
                              return null;
                            }
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
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                            hintText: 'Main Contact',
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
                          controller: secondaryContactController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else {
                              return null;
                            }
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
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(10)),
                            hintText: 'Secondary Contact',
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
                          controller: emailController,
                          validator: (value) => value!.isEmpty || !value.contains("@") ? "enter a valid email" : null,
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
                          style: TextStyle(color: Colors.black),
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF5F5F5),
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
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xffF5F5F5),
                        ),
                        width: 380,
                        //height: 35,
                        child: TextFormField(
                          controller: confirmPasswordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Required Field";
                            } else {
                              return null;
                            }
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
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(fontSize: 12),
                            labelStyle: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      isLoading
                          ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      )
                          : InkWell(
                        onTap: () async {
                          try{
                            await api.checkingEmail(email: emailController.text);

                          }catch(e){
                            String error = ErrorMessage.fromError(getFailure(e as Exception)).message;
                            showInSnackBar(error);
                          }
                          if(_formKey.currentState!.validate()){
                            if(passwordController.text == confirmPasswordController.text){
                              await api.registerUser(
                                mainContact: mainContactController.text,
                                jobTitle: jobTitleController.text,
                                lastName: lastNameController.text,
                                firstName: firstNameController.text,
                                password: passwordController.text,
                                email: emailController.text,
                                secondaryContact: secondaryContactController.text,
                                userType: 'Admin',
                                data: _fileBytes,
                                file:_cloudFile,
                              ).then((value) => print(value.data));
                              //iPrefHelper.saveToken(userModelResponse.data!.token!);
                              //print('token2: ${userModelResponse.data!.token}');
                            }else{
                              showInSnackBar('Password does not match');
                            }
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(color: Color(0xff0063F7), borderRadius: BorderRadius.circular(5)),
                          width: 380,
                          height: 40,
                          child: Center(
                              child: Text(
                                'Sign up',
                                style: GoogleFonts.openSans(fontSize: 14, color: Color(0xffFFFFFF)),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                          child: Center(child: Text('Already Registered? Login'))),
                      Spacer(),
                      Image.asset('assets/cynro_pic.png'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
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
