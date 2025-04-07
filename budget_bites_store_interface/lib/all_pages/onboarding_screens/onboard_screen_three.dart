import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreenThree extends StatelessWidget{
  const OnBoardScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 600.h,
          height: 600.v,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
           children: [

             SvgPicture.asset('asset/images/img_take_away_cuate.svg',height: 235,width: 336,),

             SizedBox(height:75.v ,),

             Text('Delivery to your home',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[800],fontSize: 30),),

             SizedBox(height: 13.v,),

             Container(
               width: 250.h,
               margin: EdgeInsets.only(
                 left: 33.h,
                 right: 36.h,
               ),
               child: Text(
                 "Enjoy fast and smooth delivery at your doorstep",
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(color: Colors.black,
                     fontSize: 16,
                     fontFamily: 'Poppins',
                     fontWeight: FontWeight.w400),
               ),
             ),
           ],

          ),

        ),
      ),
    );
  }



}

