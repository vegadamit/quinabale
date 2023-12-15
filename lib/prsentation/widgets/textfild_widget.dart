import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
class MultipleLineTextField extends StatefulWidget {
  const MultipleLineTextField({super.key,  this.controller  ,
    this.maxLines=3, this.hint, this.radius, this.keyboardType, this.obscuretext, this.suffixIcon});
  final TextEditingController? controller;

  final int maxLines;
  final String? hint;
  final double? radius;
  final TextInputType? keyboardType;
  final bool? obscuretext;
  final Widget? suffixIcon;

  @override
  State<MultipleLineTextField> createState() => _MultipleLineTextFieldState();
}

class _MultipleLineTextFieldState extends State<MultipleLineTextField> {
  FocusNode focusNodea = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    focusNodea.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    focusNodea.removeListener(_handleFocusChange);
    focusNodea.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = focusNodea.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 20 * 15,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        style:  TextStyle(color: _isFocused ? Colors.blue : Colors.black,fontFamily: AppFonts.novaregular,fontSize: 15),
        focusNode: focusNodea,
        maxLines: widget.maxLines,
        cursorColor: AppColors.blue,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          suffixIcon:widget.suffixIcon,
          contentPadding:
          EdgeInsets.symmetric(horizontal: 40, vertical: 15,),
          border: InputBorder.none,
          hintText: widget.hint,
          fillColor: AppColors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
            BorderSide(color:AppColors.blue, width: 1),
          ),
          hintStyle: TextStyle(color: _isFocused ? Colors.blue : AppColors.black26,fontFamily: AppFonts.novaregular,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
            BorderSide(color:AppColors.black26 , width: 1),
          ),
        ),
      ),
    );
  }
}
