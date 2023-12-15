import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/app/utils/constants/app_images.dart';
import 'package:quinable/app/utils/constants/app_string.dart';
import 'package:quinable/prsentation/widgets/company_info_textfild_widget.dart';

class CompanyInfo extends StatelessWidget {
  const CompanyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          AppString.company,
          style: TextStyle(color: AppColors.black),
        )),
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(color: AppColors.black, size: 40),
        actions: const [
          Icon(
            Icons.arrow_back_outlined,
            color: AppColors.white,
            size: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              color: AppColors.background,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                        width: 170,
                        child: const Text(
                          'Input Your Company Info',
                          style: TextStyle(
                              fontSize: 24, fontFamily: AppFonts.Bold),
                        )),
                  ),
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(AppImages.profileDetails))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppString.companyName,
                    style: TextStyle(fontSize: 15),
                  ),
                  InfoTextField(
                    hintText: AppString.companyName, height:10,
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  const Text(
                    AppString.facilityType,
                    style: TextStyle(fontSize: 15),
                  ),
                  InfoTextField(
                    hintText: AppString.facilityType,height: 10,
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                      color: AppColors.black26,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  const Text(
                    'Location',
                    style: TextStyle(fontSize: 15),
                  ),
                  InfoTextField(height: 10,
                    hintText: AppString.Address1,
                    suffixIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 30,
                      color: AppColors.black26,
                    ),
                  ),

                  InfoTextField(height: 20,
                    hintText: AppString.Address2,
                  ),

                  Row(
                    children: [
                      Container(
                        width: 147,
                        child: InfoTextField(
                          height: 20,
                          hintText: AppString.city,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Container(
                        width: 147,
                        height: 50,
                        decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintStyle: const TextStyle(
                                color: AppColors.black26,
                                fontFamily: AppFonts.novaregular),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            hintText: AppString.state,
                            suffixIcon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 30,
                              color: AppColors.black26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  InfoTextField(
                    height: 20,
                    hintText: AppString.zipcode,
                  ),

                  SizedBox(height:30),
                  const Text(
                    AppString.companyphone,
                    style: TextStyle(fontSize: 15),
                  ),
                  InfoTextField(
                    height: 10,
                    hintText: AppString.phone,
                  ),

                  SizedBox(height:30),
                  const Text(
                    AppString.companyemail,
                    style: TextStyle(fontSize: 15),
                  ),
                  InfoTextField(
                    height: 10,
                    hintText: AppString.email,
                  ),

                  SizedBox(height:30),
                  const Text(
                    AppString.websiteurl,
                    style: TextStyle(fontSize: 15),
                  ),
                  InfoTextField(
                    height: 10,
                    hintText: AppString.websiteurl,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyInfo(),));
          },
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
                gradient: AppColors.myGradient
            ),
            child: Center(
              child: const Text(AppString.submit,style: TextStyle(fontFamily: AppFonts.Bold,fontSize: 20,color: AppColors.white),
              ),
            ),
          ),
        )
    );
  }
}
