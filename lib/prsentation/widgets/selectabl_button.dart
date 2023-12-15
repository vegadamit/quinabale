import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_images.dart';

class SelectableButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onTap;

  const SelectableButton({
    Key? key,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap:onTap,
        child: Container(
          height: 100,
          color: AppColors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 25,
                  width: 25,
                  child: Image.asset(isSelected ?AppImages.checked:AppImages.unchecked),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(AppImages.company),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text('Hospice Austin,LLC',style: TextStyle(fontSize: 17),),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Company address',style: TextStyle(color: AppColors.black26),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}