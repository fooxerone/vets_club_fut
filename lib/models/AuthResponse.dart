/// data : {"id":25,"name":"ziad mohamed","email":"ziad68@gmail.com","email_verified_at":null,"password":"$2y$10$CQWjgUX6/YJj/ZFQcIiU.edGWAbrm.QG4teH9ssh04vH8wnDfpaUG","randomString":"PSQVFWADTH46WBFI","phone":122555568,"pakeg_tyep":null,"Payment_status":null,"abrove_status":null,"pakeg_name":null,"created_at":"2022-12-20T17:38:15.000000Z","updated_at":"2022-12-20T17:38:15.000000Z"}
/// stat : {"regestersuccess":true}

class AuthResponse {
  AuthResponse({
      this.data, 
      this.stat,
      this.message
  });

  AuthResponse.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    stat = json['stat'] != null ? Stat.fromJson(json['stat']) : null;
  }
  Data? data;
  Stat? stat;
  String? message;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    if (stat != null) {
      map['stat'] = stat?.toJson();
    }
    return map;
  }

}

/// regestersuccess : true

class Stat {
  Stat({
      this.regestersuccess,});

  Stat.fromJson(dynamic json) {
    regestersuccess = json['regestersuccess'];
  }
  bool? regestersuccess;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['regestersuccess'] = regestersuccess;
    return map;
  }

}

/// id : 25
/// name : "ziad mohamed"
/// email : "ziad68@gmail.com"
/// email_verified_at : null
/// password : "$2y$10$CQWjgUX6/YJj/ZFQcIiU.edGWAbrm.QG4teH9ssh04vH8wnDfpaUG"
/// randomString : "PSQVFWADTH46WBFI"
/// phone : 122555568
/// pakeg_tyep : null
/// Payment_status : null
/// abrove_status : null
/// pakeg_name : null
/// created_at : "2022-12-20T17:38:15.000000Z"
/// updated_at : "2022-12-20T17:38:15.000000Z"

class Data {
  Data({
      this.id, 
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
      this.updatedAt,});

  Data.fromJson(dynamic json) {
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
  num? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? password;
  String? randomString;
  num? phone;
  dynamic pakegTyep;
  dynamic paymentStatus;
  dynamic abroveStatus;
  dynamic pakegName;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['password'] = password;
    map['randomString'] = randomString;
    map['phone'] = phone;
    map['pakeg_tyep'] = pakegTyep;
    map['Payment_status'] = paymentStatus;
    map['abrove_status'] = abroveStatus;
    map['pakeg_name'] = pakegName;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}