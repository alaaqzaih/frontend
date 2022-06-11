// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables, prefer_const_constructors, deprecated_member_use, sort_child_properties_last
/*
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/authservice.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var name, password, token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                  onChanged: (val) {
                    name = val;
                  },
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  child: Text('Authenticate'),
                  color: Colors.blue,
                  onPressed: () {
                    AuthService().login(name, password).then((val) {
                      if (val.data['success']) {
                        token = val.data['token'];
                        Fluttertoast.showToast(
                            msg: 'Authenticated',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    });
                  },
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                    child: Text('Add User'),
                    color: Colors.green,
                    onPressed: () {
                      AuthService()
                          .addUser(name, password, phonenumber)
                          .then((val) {
                        Fluttertoast.showToast(
                            msg: val.data['msg'],
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                    })
              ],
            )));
  }
}
*/