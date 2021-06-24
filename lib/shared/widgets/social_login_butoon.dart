import 'package:flutter/material.dart';
import '../../shared/themes/app_images.dart';
import '../../shared/themes/appcolors.dart';
import '../../shared/themes/app_text_styles.dart';

class SocialoginButton extends StatelessWidget {
  const SocialoginButton({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke)),
          ),
          child: Row(children: [
            Expanded(child: Image.asset(AppImages.google)),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(" Entrar com o google", style: TextStyles.buttonGray)
                  ],
                )),
            Expanded(child: Container())
          ]),
        ));
  }
}
