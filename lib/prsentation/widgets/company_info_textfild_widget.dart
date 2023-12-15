import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';

class InfoTextField extends StatelessWidget {
   InfoTextField({
    Key? key,required this.hintText,this.suffixIcon,this.keyboardType,this.controller,  this.height
  }) : super(key: key);
  final Widget? suffixIcon;
  final String? hintText;
  final TextInputType?  keyboardType;
  TextEditingController? controller;
 final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(height:height ,),
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(30)
          ),
          child: TextField(
            controller:controller ,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIconColor: AppColors.black26,
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: const TextStyle(color: AppColors.black26,fontFamily: AppFonts.novaregular),
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 45, vertical: 15,),
            ),
          ),
        ),

      ],
    );
  }
}