import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/modules/Home/home_page.dart';
import 'package:pay_flow/modules/Login/login_page.dart';

class AuthController {
  bool _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthenticated = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
