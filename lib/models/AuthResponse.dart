class AuthResponse {
  String? message;
  Data? data;
  Stat? stat;

  AuthResponse({this.message, this.data, this.stat});

  AuthResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    stat = json['stat'] != null ? new Stat.fromJson(json['stat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.stat != null) {
      data['stat'] = this.stat!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  Null? emailVerifiedAt;
  String? password;
  String? randomString;
  int? phone;
  Null? pakegTyep;
  Null? paymentStatus;
  Null? abroveStatus;
  Null? pakegName;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.password,
        this.randomString,
        this.phone,
        this.pakegTyep,
        this.paymentStatus,
        this.abroveStatus,
        this.pakegName,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    password = json['password'];
    randomString = json['randomString'];
    phone = json['phone'];
    pakegTyep = json['pakeg_tyep'];
    paymentStatus = json['Payment_status'];
    abroveStatus = json['abrove_status'];
    pakegName = json['pakeg_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['password'] = this.password;
    data['randomString'] = this.randomString;
    data['phone'] = this.phone;
    data['pakeg_tyep'] = this.pakegTyep;
    data['Payment_status'] = this.paymentStatus;
    data['abrove_status'] = this.abroveStatus;
    data['pakeg_name'] = this.pakegName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Stat {
  bool? emailexets;
  bool? regestersuccess;
  bool? loginsuccess;


  Stat({this.emailexets, this.regestersuccess,this.loginsuccess});

  Stat.fromJson(Map<String, dynamic> json) {
    emailexets = json['emailexets'];
    regestersuccess = json['regestersuccess'];
    loginsuccess = json['loginsuccess'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['emailexets'] = this.emailexets;
    data['regestersuccess'] = this.regestersuccess;
    data['loginsuccess'] = this.loginsuccess;
    return data;
  }
}

