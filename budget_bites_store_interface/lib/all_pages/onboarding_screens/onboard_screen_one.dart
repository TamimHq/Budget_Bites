import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../widgets/custom_image_view.dart';

class OnBoardScreenOne extends StatelessWidget {
  const OnBoardScreenOne({super.key});

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 600.h,
          height: 600.v,
          padding: EdgeInsets.symmetric(vertical: 45.v),
          child: Column(
            children: [

              SizedBox(height: 15.v),
              _ImageFormat(),
              SizedBox(height:30.v),
              Msg1(),
              SizedBox(height: 15.v,),
              Msg2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Msg2 extends StatelessWidget {
  const Msg2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 88.v,
        width: 353.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: 'asset/images/img_ellipse_11.png',
              height: 66.v,
              width: 53.h,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 323,
                child: Text('Order your favourite meal and taste greatness',style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Msg1 extends StatelessWidget {
  const Msg1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.h,
      margin: EdgeInsets.only(left: 64,right: 44),
      child: Text('Your comfort food lies here',style:  TextStyle(
        color: Color(0xFFF10027),
        fontSize: 24,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      ),
    );
  }
}

class _ImageFormat extends StatelessWidget {
  const _ImageFormat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295.v,
      width: 328.h,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 1),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg('asset/images/img_group_53.svg'),
          fit: BoxFit.cover
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 50),
              padding: EdgeInsets.symmetric(
                horizontal: 48.h,
                vertical: 5.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg('asset/images/img_group_29.svg'),
                fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 161.v,),
                  Container(
                    height: 6.v,
                    width: 6.h,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[700],
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_group_13.svg',
            height: 140.v,
            width: 152.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 40.h,right: 25.v),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_group_18.svg',
            height: 68.v,
            width: 120.v,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 15.v,
              bottom: 42.h,
            ),
          ),
          CustomImageView(
            imagePath: 'asset/images/img_ellipse_12.svg',
            height: 22.v,
            width: 30.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 41.v,
              right: 45.h,
            ),
          ),

        ],
      ),
    );
  }
}
