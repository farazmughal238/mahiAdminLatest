import 'package:flutter/cupertino.dart';

class EditDepartmentProvider extends ChangeNotifier{
  bool isCheck = false;


  void checkingValue(bool newValue){
    isCheck = newValue;
    print(newValue);
    notifyListeners();
  }
}