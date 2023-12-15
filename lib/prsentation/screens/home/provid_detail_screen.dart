import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/auth_api/auth_provider.dart';

class ProvidDetil extends StatefulWidget {
  final int? itemid;
  const ProvidDetil({
    Key? key, this.itemid,
  }) : super(key: key);

  @override
  State<ProvidDetil> createState() => _ProvidDetilState();
}

class _ProvidDetilState extends State<ProvidDetil> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<AuthProvider>(context, listen: false).Provideruserdetail(widget.itemid);
    initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Brandon Armstro...',
              style: TextStyle(fontFamily: AppFonts.novaregular, fontSize: 20,color: Colors.black),
            ),
          ),
          backgroundColor: AppColors.white,
          iconTheme: const IconThemeData(color: Colors.black,size: 40),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                'assets/images/added@2x.png',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Consumer<AuthProvider>(builder: (context, value, _) {
      final detail = value.detailProvider?.data;
      return value.isLoding
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 13,
                        left: 23,
                        right: 9),
                    child: Container(
                      child: const CircleAvatar(
                        radius: 42,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${detail?.firstName} ${detail?.lastName}',
                          style: const TextStyle(
                            fontFamily:
                            AppFonts.novaregular,
                            fontWeight:
                            FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                            Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                            Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                            Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                            Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,),
                          ],
                        ),
                        const SizedBox(height: 8,),
                        Container(
                          height: 28,
                          width: 70,
                          decoration: BoxDecoration(
                            color: AppColors.scybackground,
                            borderRadius:BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text('CNA',style: TextStyle(color: AppColors.Dna,fontSize: 14),)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 15),
                    child: Container(
                      width:270 ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/Mail_gray.png',height: 10.65,width: 13.56,),
                              const SizedBox(width: 5,),
                              Text('${detail?.email}',style: const TextStyle(fontSize:10,color: Colors.grey ),)
                            ],),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/cell-phone number_gray.png',height: 14,width: 14,),
                              const SizedBox(width: 5,),
                              Text('${detail?.mobile}',style: const TextStyle(fontSize:10,color: Colors.grey ),)
                            ],)
                        ],
                      ),
                    ),
                  ),
                  Image.asset('assets/images/contact@2x.png',height: 43.6,width: 43.6,)
                ],
              ),
              Padding(
                padding:  const EdgeInsets.all(25),
                child: Container(
                  height: 109,
                  width: 325,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.scybackground,
                  ),
                  child: Center(
                            child: Row(
                              children: [
                                const SizedBox(width: 7,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 13),
                                  child: Container(
                                    width: 40,
                                    child: Column(
                                      children: const [
                                        Text('3',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: AppFonts.novaregular,color:AppColors.blue200),),
                                        Text('Total Shifts',style: TextStyle(fontSize: 12),)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 13),
                                  child: Container(
                                    width: 50,
                                    child: Column(
                                      children: const [
                                        Text('1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: AppFonts.novaregular,color:AppColors.blue200),),
                                        Text('Shifts On TIme',style: TextStyle(fontSize: 12),)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 13),
                                  child: Container(
                                    width: 50,
                                    child: Column(
                                      children: const [
                                        Text('1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: AppFonts.novaregular,color:AppColors.blue200),),
                                        Text('Late Call Offs',style: TextStyle(fontSize: 12),)
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 13),
                                  child: Container(
                                    width: 50,
                                    child: Column(
                                      children: const [
                                        Text('1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontFamily: AppFonts.novaregular,color:AppColors.blue200),),
                                        Text('No Call No Show',style: TextStyle(fontSize: 12),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 28,),
                  const Text('Experience',style: TextStyle(fontSize: 26,fontFamily: AppFonts.novaregular,fontWeight: FontWeight.bold),),
                  const SizedBox(width: 99,),
                  const Text('Resume',style: TextStyle(fontSize: 16,fontFamily: AppFonts.novaregular,fontWeight: FontWeight.bold,color: AppColors.blue200),),
                  const SizedBox(width: 6.84,),
                  Image.asset('assets/images/Resume.png')
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11,horizontal: 25),
                child: Container(
                  height: 98,
                  width: 325,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:const [BoxShadow(offset:Offset(1, 1) ,color: Colors.grey,blurRadius: 4),],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 13),
                        child: Text('CNA',style: TextStyle(fontSize: 16,fontFamily: AppFonts.novaregular,),),
                      ),
                      const Divider(
                        color:AppColors.dividercolor ,
                        indent: 18.5,
                        endIndent: 12.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 13),
                        child: Row(
                          children: const [
                            Text('Experience',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,color: AppColors.grayhint),),
                            SizedBox(width: 80,),
                            Text('5 years and 2 months',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,fontWeight: FontWeight.bold,color: AppColors.blue200),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Text('Licenses',style: TextStyle(fontSize: 26,fontFamily: AppFonts.novaregular,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11,horizontal: 25),
                child: Container(
                  height: 152,
                  width: 325,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:const [BoxShadow(offset:Offset(1, 1) ,color: Colors.grey,blurRadius: 4),],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 13),
                        child: Row(
                          children: [
                            const Text('Certified Nursing Assistant',style: TextStyle(fontSize: 16,fontFamily: AppFonts.novaregular,),),
                            const SizedBox(width: 80,),
                            Image.asset('assets/images/enclosure.png')
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        child: Text('NO.123456789',style: TextStyle(fontFamily: AppFonts.novaregular,color: AppColors.grayhint),),
                      ),
                      const Divider(
                        color:AppColors.dividercolor ,
                        indent: 18.5,
                        endIndent: 12.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 13),
                        child: Row(
                          children: const [
                            Text('Issue Date',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,color: AppColors.grayhint),),
                            SizedBox(width: 146,),
                            Text('04/28/2021',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          children: const [
                            Text('Experience',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,color: AppColors.grayhint),),
                            SizedBox(width: 141,),
                            Text('04/28/2021',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Text('Credential Documents',style: TextStyle(fontSize: 22,fontFamily: AppFonts.novaregular,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11,horizontal: 25),
                child: Container(
                  height: 98,
                  width: 325,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:const [BoxShadow(offset:Offset(1, 1) ,color: Colors.grey,blurRadius: 4),],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 13),
                        child: Row(
                          children: [
                            const Text('TB or Chest X-Ray',style: TextStyle(fontSize: 16,fontFamily: AppFonts.novaregular,),),
                            const SizedBox(width: 140,),
                            Image.asset('assets/images/enclosure.png')
                          ],
                        ),
                      ),
                      const Divider(
                        color:AppColors.dividercolor ,
                        indent: 18.5,
                        endIndent: 12.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 13),
                        child: Row(
                          children: const [
                            Text('Issue Date',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,color: AppColors.grayhint),),
                            SizedBox(width: 146,),
                            Text('04/28/2021',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11,horizontal: 25),
                child: Container(
                  height: 98,
                  width: 325,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:const [BoxShadow(offset:Offset(1, 1) ,color: Colors.grey,blurRadius: 4),],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 13),
                        child: Row(
                          children: [
                            const Text('TB or Chest X-Ray',style: TextStyle(fontSize: 16,fontFamily: AppFonts.novaregular,),),
                            const SizedBox(width: 140,),
                            Image.asset('assets/images/enclosure.png')
                          ],
                        ),
                      ),
                      const Divider(
                        color:AppColors.dividercolor ,
                        indent: 18.5,
                        endIndent: 12.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 13),
                        child: Row(
                          children: const [
                            Text('Issue Date',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular,color: AppColors.grayhint),),
                            SizedBox(width: 146,),
                            Text('04/28/2021',style: TextStyle(fontSize: 14,fontFamily: AppFonts.novaregular),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      );
    }),
        ));
  }
}
