class UserModelResponse {
  bool? status;
  String? message;
  Data? data;

  UserModelResponse({this.status, this.message, this.data});

  UserModelResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? jobTitle;
  String? mainContact;
  String? userId;
  String? userType;
  int? userStatus;
  String? image;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? token;

  Data(
      {this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.jobTitle,
        this.mainContact,
        this.userId,
        this.userType,
        this.userStatus,
        this.image,
        this.sId,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.token});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    jobTitle = json['jobTitle'];
    mainContact = json['mainContact'];
    userId = json['userId'];
    userType = json['userType'];
    userStatus = json['userStatus'];
    image = json['image'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    data['jobTitle'] = this.jobTitle;
    data['mainContact'] = this.mainContact;
    data['userId'] = this.userId;
    data['userType'] = this.userType;
    data['userStatus'] = this.userStatus;
    data['image'] = this.image;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['token'] = this.token;
    return data;
  }
}
