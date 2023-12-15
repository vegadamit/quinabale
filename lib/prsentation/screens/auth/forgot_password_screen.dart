import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/app/utils/constants/app_string.dart';
import 'package:quinable/prsentation/widgets/appbutton_widget.dart';
import 'package:quinable/prsentation/widgets/sign_up_button.dart';
import 'package:quinable/prsentation/widgets/textfild_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: AppColors.white,
            ),
          ),
          Positioned(
            child: Container(
              height: 304,
              decoration: const BoxDecoration(
                  gradient: AppColors.myGradient
              ),
            ),
          ),
          Positioned(
              top: 20,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: const Icon(Icons.arrow_back_outlined,color: AppColors.white,size: 40,))),
          Positioned(
              top: 145,
              left: 30,
              child: Column(
                children: [
                  const Text(
                    AppString.forgot,
                    style: TextStyle(
                        fontFamily: AppFonts.novaregular,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                   Stack(
                     children: [
                       const MultipleLineTextField(
                         hint: AppString.MobileEmail,
                         keyboardType: TextInputType.number,
                       ),
                       Positioned(
                         top: 10,
                           right:10,
                         child: Container(
                         height: 30,
                         width: 90,
                           decoration: BoxDecoration(
                           color: AppColors.scybackground,
                           borderRadius: BorderRadius.circular(30)),
                           child: const Center(child: Text(AppString.Verification,style: TextStyle(color: AppColors.blue),)),
                       ))
                     ],
                   ),
                  const SizedBox(
                    height: 15,
                  ),
                  const  MultipleLineTextField(
                    hint: AppString.VerificationCode,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const MultipleLineTextField(
                    hint: AppString.NewPassword,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const MultipleLineTextField(
                    hint: AppString.ConfirmPassword,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                   AppButton(
                    onTap: () {},
                    child: const Text(AppString.submit,style: TextStyle(fontFamily: AppFonts.Bold,fontSize: 20,color: AppColors.white),
                  ))
                ],
              )),
          const Positioned(top: 30 * 23, left: 50, child: SignUp(title1:AppString.dont_account ,title2: AppString.signup,))
        ],
      ),
    );
  }
}
