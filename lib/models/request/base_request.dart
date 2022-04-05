import 'dart:convert';

class BaseRequest {
  BaseRequest({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory BaseRequest.fromRawJson(String str) =>
      BaseRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseRequest.fromJson(Map<String, dynamic> json) => BaseRequest(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
