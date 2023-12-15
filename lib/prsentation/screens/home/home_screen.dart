import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quinable/app/utils/constants/app_colors.dart';
import 'package:quinable/app/utils/constants/app_fonts.dart';
import 'package:quinable/auth_api/auth_provider.dart';
import 'package:quinable/prsentation/screens/home/provid_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AuthProvider>(context, listen: false).gatuser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
            title: const Center(
              child: Text(
                'Provider',
                style:
                    TextStyle(fontFamily: AppFonts.novaregular, fontSize: 25),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset(
                  'assets/images/Collection_2@2x.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                'assets/images/fold@2x.png',
                height: 5,
                width: 5,
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(gradient: AppColors.myGradient),
            )),
        body: Consumer<AuthProvider>(builder: (context, value, _) {
          return value.isLoding
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 25),
                      child: Container(
                        height: 51,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 23,
                                vertical: 15,
                              ),
                              hintStyle: TextStyle(
                                color: AppColors.black26,
                                fontFamily: AppFonts.novaregular,
                              ),
                              hintText: 'Search',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              suffixIconColor: AppColors.black,
                              suffixIcon: Icon(
                                Icons.search,
                                color: AppColors.black,
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.userModel?.data?.length,
                          itemBuilder: (context, index) {
                            final userdata = value.userModel?.data?[index];
                            final id = value.userModel?.data?[index].id;
                            return Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ProvidDetil(itemid: id),
                                          ));
                                    },
                                    child: Container(
                                      color: AppColors.white,
                                      height: 160,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                               Padding(
                                                 padding: EdgeInsets.only(
                                                    top: 13,
                                                    left: 23,
                                                    right: 9),
                                                child: Container(
                                                  child: CircleAvatar(
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
                                                      '${userdata?.firstName} ${userdata?.lastName}',
                                                      style: TextStyle(
                                                        fontFamily:
                                                            AppFonts.novaregular,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    SizedBox(height: 8),
                                                    Row(
                                                      children: [
                                                        Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                                                        Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                                                        Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                                                        Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,color:AppColors.retingcolor,),
                                                        Image.asset('assets/images/stars_gray@2x.png',height: 16.05,width: 16.68,),
                                                      ],
                                                    ),
                                                    SizedBox(height: 8,),
                                                    Container(
                                                      height: 28,
                                                      width: 70,
                                                      decoration: BoxDecoration(
                                                        color: AppColors.scybackground,
                                                          borderRadius:BorderRadius.circular(20),
                                                      ),
                                                      child: Center(child: Text('CNA',style: TextStyle(color: AppColors.Dna,fontSize: 14),)),
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
                                                        SizedBox(width: 5,),
                                                        Text('${userdata?.email}',style: TextStyle(fontSize:10,color: Colors.grey ),)
                                                      ],),
                                                      SizedBox(height: 10,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                        Image.asset('assets/images/cell-phone number_gray.png',height: 14,width: 14,),
                                                        SizedBox(width: 5,),
                                                        Text('${userdata?.mobile}',style: TextStyle(fontSize:10,color: Colors.grey ),)
                                                      ],)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Image.asset('assets/images/contact@2x.png',height: 43.6,width: 43.6,)
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                );
        }));
  }
}
