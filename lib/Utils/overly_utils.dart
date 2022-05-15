import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';


class OverlyHelper {
  showToast(String msg) => Fluttertoast.showToast(
      msg: msg, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, timeInSecForIosWeb: 3, backgroundColor: Colors.black54, textColor: Colors.white, fontSize: 14.0);

  Widget showLoader() => Lottie.asset(
    'assets/lottieFiles/loader.json',
    width: 60,
    height: 60,
    fit: BoxFit.fill,
  );
}