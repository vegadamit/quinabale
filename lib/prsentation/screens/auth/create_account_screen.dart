import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/app/utils/constants/app_string.dart';
import 'package:quinable/prsentation/screens/auth/company_screen.dart';
import 'package:quinable/prsentation/widgets/appbutton_widget.dart';
import 'package:quinable/prsentation/widgets/textfild_widget.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);

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
              decoration: const BoxDecoration(gradient: AppColors.myGradient),
            ),
          ),
          Positioned(
              top: 20,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    color: AppColors.white,
                    size: 40,
                  ))),
          Positioned(
              top: 115,
              left: 30,
              child: Column(
                children: [
                  const Text(
                    AppString.create_account,
                    style: TextStyle(
                        fontFamily: AppFonts.novaregular,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    AppString.information,
                    style: TextStyle(
                        fontFamily: AppFonts.novaregular,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  const MultipleLineTextField(
                    hint: AppString.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const MultipleLineTextField(
                    hint: AppString.Password,
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
                    height: 17,
                  ),
                  const MultipleLineTextField(
                    hint: AppString.firstname,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const MultipleLineTextField(
                    hint: AppString.lastname,
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppButton(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Companyscreen(),));
                      },
                      child: const Text(
                        AppString.next,
                        style: TextStyle(
                            fontFamily: AppFonts.Bold,
                            fontSize: 20,
                            color: AppColors.white),
                      ))
                ],
              )),
        ],
      ),
    );
  }
}
