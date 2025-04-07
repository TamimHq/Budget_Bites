import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_one.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_three.dart';
import 'package:budget_bites_store_interface/all_pages/onboarding_screens/onboard_screen_two.dart';
import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_icon_button.dart';
import 'onboard_screen_final.dart';

class OnBoard extends StatefulWidget{
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   final PageController pageController = PageController();
   int currentPage = 0;
   void jumpToNextPage(int nextPage){
     setState(() {
       currentPage = nextPage;
     });
     pageController.animateToPage(nextPage, duration: const Duration(milliseconds: 500), curve:Curves.ease);

   }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              CustomIconButton(
                height: 60.adaptSize,
                width: 60.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                child: CustomImageView(
                  imagePath: "asset/images/img_logo_yellow_700.svg",
                ),
              ),
              SizedBox(height: 10.v,),
              SizedBox(
                height: 600.v,
                width: 600.h,
                child: PageView(
        
                  controller: pageController,
                  onPageChanged: (value){

                  },
                  children: [
                    OnBoardScreenOne(),
                    OnBoardScreenTwo(),
                    OnBoardScreenThree(),
                  ],
                ),
              ),
              SizedBox(height: 5.v,),
              SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
              effect: WormEffect(
                activeDotColor: Colors.redAccent,
              ),),
              SizedBox(height: 10.v,),
          Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          final next = currentPage + 1;
                          print('Next tapped: Next page will be $next');
                          jumpToNextPage(next);
        
                        },
                        child: SizedBox(
                          width: 150,
                          height: 50, // Adjust the height as needed
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEA2242),
                              borderRadius: BorderRadius.circular(8), // Border radius
                            ),
                            child: Center(
                              child: Text(
                               "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v,),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnBoardScreenFinal()),
                    );
                  },
                      child: Text("skip",style: TextStyle(color: Colors.grey,fontSize: 20),)),
                ],
              ),
        
        
        
        
            ],
        
          ),
        ),
      ),
    );
  }

}

