import 'package:flutter/material.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import '../../shared/themes/app_images.dart';
import '../../shared/themes/appcolors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
          children: [
            Center(child: Image.asset(AppImages.union)),
            Center(child: Image.asset(AppImages.logoFull))
          ],
        ));
  } //Stack - ele eh um widghet que permite um forma de empilhamento , colocar
  //um item por cima isso pode ser notado nessa tela ,pois ha 2 imagens , sendo
  // uma por baixo e a outra por cima
}
