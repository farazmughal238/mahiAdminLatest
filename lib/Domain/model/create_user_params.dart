import 'dart:html';
import 'dart:html' as html;


import 'dart:typed_data';

class CreateUserParams{
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? mainContact;
  String? jobTitle;
  String? userType;
  String? fileName;
  String? filePath;

  CreateUserParams({this.firstName, this.lastName, this.email, this.password, this.mainContact, this.jobTitle, this.userType, this.fileName, this.filePath,});

  Map<String, dynamic> toMap(){
    return {'firstName': firstName, 'lastName': lastName, 'email': email, 'password': password, 'mainContact': mainContact, 'jobTitle': jobTitle, 'userType': userType, 'fileName': fileName, 'filePath': filePath,};
  }

  List<Object> get props => [firstName!, lastName!, email!, password!, mainContact!, jobTitle!, userType!,];
}
