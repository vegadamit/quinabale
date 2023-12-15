import 'package:flutter/material.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/app/utils/constants/app_string.dart';
import 'package:quinable/prsentation/screens/auth/company_info_screen.dart';
import 'package:quinable/prsentation/widgets/selectabl_button.dart';
class Companyscreen extends StatefulWidget {

   Companyscreen({Key? key,}) : super(key: key);

  @override
  State<Companyscreen> createState() => _CompanyscreenState();
}

class _CompanyscreenState extends State<Companyscreen> {
int? selectindex;
List itemList=[1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(AppString.company,style: TextStyle(color: AppColors.black),)),
        backgroundColor: AppColors.white,
        iconTheme: const IconThemeData(
          color: AppColors.black,
          size: 40
        ),
        actions:  const[
           Icon(Icons.arrow_back_outlined,color: AppColors.white,size: 30,),
        ],

      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            height: 80,
           decoration: const BoxDecoration(
               gradient: AppColors.myGradient
           ),
            child: Row(
              children: [
                Container(
                  width: 311,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Not found your company? Click here to inpute your company info.',textDirection:TextDirection.ltr,style: TextStyle(fontSize: 13,color: AppColors.white),),
                  ),
                ),
                const Icon(Icons.chevron_right_sharp,size:47,color: AppColors.white,)
              ],
            )
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: AppColors.white,
               borderRadius: BorderRadius.circular(30)
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Search',
                    hintStyle: const TextStyle(color: AppColors.black26,fontFamily: AppFonts.novaregular),
                  suffixIcon: const Icon(Icons.search,color: AppColors.black,),contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 15,),
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context,index){
              return SelectableButton(
                isSelected: selectindex==index,
                onTap: (){
                  setState(() {
                    if (selectindex == index) {
                      selectindex= -1;
                    } else {
                      selectindex  = index;
                    }
                  });
                },
              );
            }),
          )
        ],
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CompanyInfo(),));
        },
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            gradient: AppColors.myGradient
          ),
          child: const Center(
            child: Text(AppString.submit,style: TextStyle(fontFamily: AppFonts.Bold,fontSize: 20,color: AppColors.white),
        ),
          ),
        ),
      )
    );
  }
}
