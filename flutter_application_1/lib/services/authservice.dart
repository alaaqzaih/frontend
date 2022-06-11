// ignore_for_file: unnecessary_new

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//import 'package:Fluttertoast/Fluttertoast.dart';
class AuthService {
  Dio dio = new Dio();

  login(name, password) async {
    try {
      return await dio.post('http://10.0.2.2:3000/authenticate',
          data: {
            "name": name,
            "password": password,
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response!.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  addUser(name, password, phonenumber) async {
    return await dio.post('http://10.0.2.2:3000/adduser',
        data: {"name": name, "password": password, "phonenumber": phonenumber},
        options: Options(contentType: Headers.formUrlEncodedContentType));
  }
}
