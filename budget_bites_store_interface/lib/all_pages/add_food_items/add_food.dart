import 'dart:io';
import 'package:budget_bites_store_interface/all_pages/dashboard_screen/home.dart';
import 'package:budget_bites_store_interface/core/app_export.dart';
import 'package:budget_bites_store_interface/widgets/app_bar/appbar_title.dart';
import 'package:budget_bites_store_interface/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddFoodItems extends StatefulWidget {
  const AddFoodItems({super.key});

  @override
  State<AddFoodItems> createState() => _AddFoodItemsState();
}

class _AddFoodItemsState extends State<AddFoodItems> {
  final List<String>items=['Ice cream','Burger','Pizza'];
  String? value;

  final ImagePicker _picker =ImagePicker();
  XFile? selectedImage;


  Future getImage() async{
    var image = await _picker.pickImage(source: ImageSource.gallery);
    
    if(image!=null)
      {
        selectedImage=image;
        setState(() {

        });
      }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Color(0xff00008B),
        centerTitle: true,
        title: AppbarTitle(text: "Add Food Items"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding:  EdgeInsets.only(left: 10.h,top: 10.v,right: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: "Upload Your Food Picture"),
                SizedBox(height: 10.v,),
                selectedImage==null?GestureDetector(
                  onTap: (){
                    getImage();
                  },
                  child: Center(
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                      child: Container(
                        height: 150.v,
                        width: 150.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87,width: 1.5.h),
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                            child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: 30.h,
                                    color: Colors.blue,
                                  )
                            ),
                    ),
                  ),
                ):GestureDetector(
                  onTap: (){
                    getImage();
                  },
                  child: Center(
                    child: Material(
                      elevation: 4.0,
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                      child: Container(
                        height: 150.v,
                         width: 150.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87,width: 1.5.h),
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                          child: Image.file(
                            File(selectedImage!.path),
                            fit: BoxFit.cover ,
                          ),
                        ),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 30.v,),
                BigText(text: "Item Name:"),
                SizedBox(height: 10.v,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter food name",
                      hintStyle: CustomTextStyles.titleSmallPoppinsGray50001,
                    ),
        
                  ),
                ),
                SizedBox(height: 30.v,),
                BigText(text: "Item Price:"),
                SizedBox(height: 10.v,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Price",
                      hintStyle: CustomTextStyles.titleSmallPoppinsGray50001,
                    ),
        
                  ),
                ),
                SizedBox(height: 30.v,),
                BigText(text: "Item Details:"),
                SizedBox(height: 20.v,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: TextField(
                    maxLines: 7,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter food details",
                      hintStyle: CustomTextStyles.titleSmallPoppinsGray50001,
                    ),
                  ),
                ),
                SizedBox(height: 20.v,),
                BigText(text: "Select Category:",),
                SizedBox(height: 10.v,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                    color: Color(0xFFececf8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: CustomTextStyles.titleMedium18,
                              )))
                          .toList(),
                      onChanged: ((value) => setState((){
                        this.value=value;
                      })),
                      dropdownColor: Colors.white,
                      hint: BigText(text: "Select Category",),
                      icon: Icon(Icons.arrow_drop_down,color: Colors.black87,),
                      iconSize: 30,
                      value: value,
                    ),
                  ),
                ),
                SizedBox(height: 10.v,),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      print('pressed');
                    },
                    child: Text(
                      'ADD', style: TextStyle(fontSize: 20,),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Color(0xff00008B)),
                      foregroundColor:
                      MaterialStateProperty.all(Colors.white),

                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:
                            BorderRadiusStyle.roundedBorder30,
                          )),
                    ),
                  ),
                ),
        
              ],
        
            ),
          ),
        
        ),
      ),
    );
  }
}
