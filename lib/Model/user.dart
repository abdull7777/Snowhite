class User {
  String? token;
  String? password;
  String? name;
  String? cmtoken;
  String? pic;
  int? id;
  int? phone;
  User({
    this.password,
    this.phone,
    this.token,
    this.name,
    this.cmtoken,
    this.pic,
    this.id,
  });

  User.fromJson(Map<String, dynamic> json) {
    phone = json["phone"];
    password = json["password"];
    id = json["id"];
    name = json["name"];
    pic = json["pic"];
    token = json["token"];
    cmtoken = json["cmtoken"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["phone"] = this.phone;
    data["password"] = this.password;
    data["cmToken"] = this.cmtoken;
    data["token"] = this.token;
    data["name"] = this.name;
    data["id"] = this.id;
    data["pic"] = this.pic;
    return data;
  }
}
