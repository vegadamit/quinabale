import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final child;
  const AppButton(
      {Key? key, required this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: 20 * 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
            gradient: AppColors.myGradient
            ),
        child:MaterialButton(
          onPressed: onTap,child: child,
        focusColor: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        )
      );
  }
}
