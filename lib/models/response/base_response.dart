import 'dart:convert';

class BaseResponse {
  BaseResponse({
    required this.token,
  });

  String token;

  factory BaseResponse.fromRawJson(String str) =>
      BaseResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
