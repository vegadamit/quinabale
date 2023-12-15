import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:provider/provider.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/app/utils/constants/app_images.dart';
import 'package:quinable/app/utils/constants/app_string.dart';
import 'package:quinable/auth_api/auth_provider.dart';
import 'package:quinable/prsentation/screens/auth/forgot_password_screen.dart';
import 'package:quinable/prsentation/widgets/appbutton_widget.dart';
import 'package:quinable/prsentation/widgets/sign_up_button.dart';
import 'package:quinable/prsentation/widgets/textfild_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailOrMobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<AuthProvider>(builder: (context, value, _) {
        return Center(
            child: Stack(children: [
          Container(
            color: Colors.white,
          ),
          Container(
            height: 320,
            decoration: const BoxDecoration(gradient: AppColors.myGradient),
          ),
          Positioned(
              top: 145,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    Image.asset(AppImages.logo_dark),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      AppString.loginaccount,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: AppFonts.novaregular),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MultipleLineTextField(
                      controller: emailOrMobileController,
                      hint: AppString.email_mobile,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    MultipleLineTextField(
                      controller: passwordController,
                      hint: AppString.Password,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordScreen(),
                                ));
                          },
                          child: const Text(
                            '${AppString.forgot}?',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.blue200),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    value.isLoding == true
                        ? CircularProgressIndicator()
                        : AppButton(
                            onTap: () {
                              if (emailOrMobileController.text.isEmpty) {
                                ToastWidget(context, AppImages.error,
                                    AppString.entermobilandpassword);
                              } else if (passwordController.text.isEmpty) {
                                ToastWidget(context, AppImages.error,
                                    AppString.enterpassword);
                              } else {
                                Provider.of<AuthProvider>(context,
                                        listen: false)
                                    .logindata(emailOrMobileController.text,
                                        passwordController.text, context);
                              }
                            },
                            child: const Text(
                              AppString.login,
                              style: TextStyle(
                                  fontFamily: AppFonts.Bold,
                                  fontSize: 20,
                                  color: AppColors.white),
                            ),
                          ),
                  ],
                ),
              )),
          const Positioned(
              top: 30 * 23 + 10,
              left: 50,
              child: SignUp(
                title1: AppString.dont_account,
                title2: AppString.signup,
              ))
        ]));
      }),
    );
  }

  ToastFuture ToastWidget(BuildContext context, String image, String title) {
    return showToastWidget(
      Container(
        height: 110,
        width: 250,
        decoration: BoxDecoration(
            color: AppColors.black26,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset(
                image,
                width: 40,
                height: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 14, color: AppColors.white),
              )
            ],
          ),
        ),
      ),
      animation: StyledToastAnimation.slideToBottom,
      axis: Axis.horizontal,
      position: StyledToastPosition(offset: 10),
      context: context,
      duration: Duration(seconds: 3),
    );
  }
}
