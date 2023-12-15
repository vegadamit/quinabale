import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/prsentation/screens/auth/signup_screen.dart';

class SignUp extends StatelessWidget {
  final String title1;
  final String title2;


  const SignUp({
    Key? key,required this.title1, required this.title2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title1,style: TextStyle(fontSize: 16,fontFamily:AppFonts.novaregular,color:AppColors.black26 ),),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
        }, child: Text(title2,style: TextStyle(fontFamily: AppFonts.novaregular,fontSize: 17, ),))
      ],
    );
  }
}