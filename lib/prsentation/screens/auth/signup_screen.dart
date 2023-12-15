import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/app/utils/constants/app_images.dart';
import 'package:quinable/app/utils/constants/app_string.dart';
import 'package:quinable/prsentation/screens/auth/create_account_screen.dart';
import 'package:quinable/prsentation/widgets/appbutton_widget.dart';
import 'package:quinable/prsentation/widgets/textfild_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            height: 320,
            decoration: const BoxDecoration(
                gradient:AppColors.myGradient),
          ),
          Positioned(
              top: 20,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: const Icon(Icons.arrow_back_outlined,color: AppColors.white,size: 40,))),
          Positioned(
              top: 140,
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  children: [
                    Image.asset(AppImages.logo_dark),
                    const SizedBox(
                      height: 20,
                    ),
                     const Text(
                      'Mobile Number',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: AppFonts.novaregular),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      children: [
                        const MultipleLineTextField(
                          hint: AppString.mobile,
                          keyboardType: TextInputType.number,
                        ),
                        Positioned(
                            top: 10,
                            right:10,
                            child: Container(
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: AppColors.blue1,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(child: Text(AppString.Verification,style: TextStyle(color: AppColors.blue),)),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const MultipleLineTextField(

                      hint: AppString.VerificationCode,
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    AppButton(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount() ,));
                      },
                      child: const Text(AppString.next,style: TextStyle(fontFamily: AppFonts.Bold,fontSize: 20,color: AppColors.white),),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
