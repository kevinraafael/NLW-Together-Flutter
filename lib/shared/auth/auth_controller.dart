import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;
  UserModel get user =>
      _user!; // esse get mantem uma unica instancia do usuario ,
  //dessa forma nenhum outro lugar consegue acessar
  // a exclamacao serve para garartanimoso que ele nao eh null (false) , nul
  //safety
  void setUser(BuildContext context, var user) {
    if (user != null) {
      saveUser(user);
      _user = user;

      Navigator.pushReplacementNamed(context, "/home");
      // se ele tiver logado ir para home
    } else {
      Navigator.pushReplacementNamed(context, "/login");
      //nao tiver logado va para tela de login
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    /* Quando ocorre esse get instance  ele vai no metodo channel
    um processo de comunicacao byte a byte entre o nativo e o flutter
    ai quando ocorre essa comunicacao conseguimos salvar os dados*/
    await instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(
        Duration(seconds: 2)); // dar um delay para aparecer splash
    if (instance.containsKey("user")) {
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
    } else {
      setUser(context, null);
    }

    return; // funcao para ver se tem usuario logado
  }
}
