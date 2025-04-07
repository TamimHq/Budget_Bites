import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/custom_image_view.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(

          backgroundColor: const Color(0xFFEA2242),
          leading: IconButton(onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new, color: Colors.white,
              ),
          ),

          title: const Text("Forget Password?",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),

          ),
          automaticallyImplyLeading: false,
        ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(vertical: 18,horizontal: 14),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 27.v,),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal:15),
                child: Text('Select which contact details should we use to reset your password',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 1.50,
                  ),

                ),
              ),

            SizedBox(height: 31.v,),
            TextFormField(
              onTap: (){},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 28.v),
                border: OutlineInputBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder23,
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade900,
                    width: 2.h,
                  ),
                ),
                labelText: 'Via sms:',
                labelStyle: TextStyle(
                  color: Color(0xFF828282),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
                prefixIcon: Icon(Icons.message),
              ),

            ),
            SizedBox(height: 31.v,),
            TextFormField(
              onTap: (){},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 28.v),
                border: OutlineInputBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder23,
                  borderSide: BorderSide(
                    color: Colors.blueGrey.shade900,
                    width: 1.5.h,
                  ),
                ),
                labelText: 'Via Email:',
                labelStyle: TextStyle(
                  color: Color(0xFF828282),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
                prefixIcon: Icon(Icons.email),
              ),

            ),

            SizedBox(height: 60.v,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150.h,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFEA2242),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Border radius
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

}
