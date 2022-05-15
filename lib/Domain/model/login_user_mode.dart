class LoginUserModel {
  bool? status;
  String? message;
  User? user;

  LoginUserModel({this.status, this.message, this.user});

  LoginUserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? sId;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? jobTitle;
  String? mainContact;
  String? secondaryContact;
  String? userId;
  String? userType;
  int? userStatus;
  String? image;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? token;

  User(
      {this.sId,
        this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.jobTitle,
        this.mainContact,
        this.secondaryContact,
        this.userId,
        this.userType,
        this.userStatus,
        this.image,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.token});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    jobTitle = json['jobTitle'];
    mainContact = json['mainContact'];
    secondaryContact = json['secondaryContact'];
    userId = json['userId'];
    userType = json['userType'];
    userStatus = json['userStatus'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['jobTitle'] = this.jobTitle;
    data['mainContact'] = this.mainContact;
    data['secondaryContact'] = this.secondaryContact;
    data['userId'] = this.userId;
    data['userType'] = this.userType;
    data['userStatus'] = this.userStatus;
    data['image'] = this.image;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['token'] = this.token;
    return data;
  }
}
