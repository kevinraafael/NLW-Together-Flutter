import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  var _isAuthenticated = false;
  var _user;
  get user => _user; // esse get mantem uma unica instancia do usuario ,
  //dessa forma nenhum outro lugar consegue acessar
  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      // se ele tiver logado ir para home
    } else {
      _isAuthenticated = false;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
      //nao tiver logado va para tela de login
    }
  }
}
