import 'package:flutter/material.dart';
import 'package:pay_flow/components/SocialButton/social_login_button.dart';
import 'package:pay_flow/core/images/app_images.dart';
import 'package:pay_flow/core/themes/app_colors.dart';
import 'package:pay_flow/core/themes/app_text_styles.dart';
import 'package:pay_flow/modules/Login/login_controller.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * .4,
              color: AppColors.primary,
            ),
            Positioned(
              top: size.height * 0.06,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 373,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: size.height * 0.07,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70.0,
                      right: 70.0,
                      top: 30.0,
                      bottom: 40.0,
                    ),
                    child: Text(
                      'Organize seus boletos em um só lugar',
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 40.0),
                    child: SocialLoginButton(
                      buttonTitle: 'Login com Google',
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
