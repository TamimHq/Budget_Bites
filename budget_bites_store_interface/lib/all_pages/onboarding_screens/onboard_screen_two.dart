import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardScreenTwo extends StatelessWidget{
  const OnBoardScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 600.v,
          height: 600.h,
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              Container(
                child: SvgPicture.asset('asset/images/img_illustration.svg',height: 342,width: 327,),
                alignment: Alignment.center,
              ),
              SizedBox(height: 32,),
              Container(
                width: 326,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 10,
                ),
                child: Text(
                  "Your comfort food lies here",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF10027),
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 21),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 294,
                  margin: EdgeInsets.only(
                    left: 18,
                    right: 29,
                  ),
                  child: Text(
                    "We provide well prepared meal at all hours of the day",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  
}