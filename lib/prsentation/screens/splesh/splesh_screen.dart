import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_images.dart';
import 'package:quinable/prsentation/screens/auth/login_screen.dart';


class Spleshscreen extends StatefulWidget {
  const Spleshscreen({Key? key}) : super(key: key);

  @override
  State<Spleshscreen> createState() => _SpleshscreenState();
}

class _SpleshscreenState extends State<Spleshscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       gradient: LinearGradient(colors: [
         AppColors.lightblue,
         AppColors.cyan
       ],begin: Alignment.centerLeft,
           end: Alignment.centerRight,
       )
     ),
      child: Center(child: Image.asset(AppImages.logo_dark)),
    );
  }
}
