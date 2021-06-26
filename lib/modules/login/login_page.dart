import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/modules/login/login_controller.dart';
import 'package:payflow/shared/widgets/social_login_butoon.dart';
import '../../shared/themes/app_images.dart';
import '../../shared/themes/appcolors.dart';
import '../../shared/themes/app_text_styles.dart';
import '../../shared/widgets/social_login_butoon.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginaPageState createState() => _LoginaPageState();
}

class _LoginaPageState extends State<LoginPage> {
  final controller = LoginController(); // instanciando nossa classe de login
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return (Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Container(
                    width: size.width,
                    height: size.height * 0.36,
                    color: AppColors.primary),
                Positioned(
                    top: 40,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      AppImages.person,
                      width: 208,
                      height: 273,
                    )),
                Positioned(
                    bottom: 120,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.logomini),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 70, right: 70, bottom: 20),
                          child: Text("Organize seus boletos em um só lugar",
                              textAlign: TextAlign.center,
                              style: TextStyles.titleHome),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 40, left: 40, right: 40),
                            child: SocialoginButton(onTap: () {
                              controller.googleSignIn(context);
                            }))
                      ],
                    ))
              ],
            ))));
    //main axis alignment , para realizar alinhamento em uma coluna
    // o crossAlignment vai colocar o componente no centro
  }
}
