/*
 * BSD 3-Clause License

    Copyright (c) 2020, RAY OKAAH - MailTo: ray@flutterengineer.com, Twitter: Rayscode
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import 'dart:convert';

WooJwtResponse wooJwtResponseFromJson(String str) =>
    WooJwtResponse.fromJson(json.decode(str));

String wooJwtResponseToJson(WooJwtResponse data) => json.encode(data.toJson());

class WooJwtResponse {
  WooJwtResponse({
    this.success,
    this.statusCode,
    this.code,
    this.message,
    this.data,
  });

  bool success;
  int statusCode;
  String code;
  String message;
  Data data;

  factory WooJwtResponse.fromJson(Map<String, dynamic> json) => WooJwtResponse(
        success: json["success"],
        statusCode: json["statusCode"],
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "statusCode": statusCode,
        "code": code,
        "message": message,
        "data": data.toJson(),
      };

  @override
  toString() => this.toJson().toString();
}

class Data {
  Data({
    this.token,
    this.id,
    this.email,
    this.nicename,
    this.firstName,
    this.lastName,
    this.displayName,
  });

  String token;
  int id;
  String email;
  String nicename;
  String firstName;
  String lastName;
  String displayName;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
        id: json["id"],
        email: json["email"],
        nicename: json["nicename"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        displayName: json["displayName"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "id": id,
        "email": email,
        "nicename": nicename,
        "firstName": firstName,
        "lastName": lastName,
        "displayName": displayName,
      };
}
