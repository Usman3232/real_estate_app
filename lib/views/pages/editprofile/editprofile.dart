import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/auth_input_text_field.dart';
import 'package:real_estate_app/utils/constants.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import 'components/upload_image.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            height: SizeConfig.heightMultiplier * 1,
            width: SizeConfig.widthMultiplier * 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black12)),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new),
              color: Colors.black45,
            ),
          ),
        ),
        title: TextView(
            text: 'Profile',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: SizeConfig.heightMultiplier * 100,
          width: SizeConfig.widthMultiplier * 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Upload_image(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 15),
                  child: TextView(
                    text: 'Full Name',
                    size: SizeConfig.textMultiplier * 2,
                    color: Colors.black,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Name',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Color(0xffF4F5F6),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 15),
                  child: TextView(
                    text: 'Email',
                    size: SizeConfig.textMultiplier * 2,
                    color: Colors.black,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Color(0xffF4F5F6),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 15),
                  child: TextView(
                    text: 'Address',
                    size: SizeConfig.textMultiplier * 2,
                    color: Colors.black,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Address',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Color(0xffF4F5F6),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 7, top: 15),
                  child: TextView(
                    text: 'Password',
                    size: SizeConfig.textMultiplier * 2,
                    color: Colors.black,
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter password',
                      hintStyle: TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Color(0xffF4F5F6),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.transparent))),
                ),
                Spacer(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomAuthButton(
                      callback: () {},
                      colour: AppColors.btnclr,
                      fontSize: SizeConfig.textMultiplier * 2,
                      title: 'Save Change',
                      textcolour: Colors.white,
                      height: SizeConfig.heightMultiplier * 7,
                      width: SizeConfig.widthMultiplier * 80,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
