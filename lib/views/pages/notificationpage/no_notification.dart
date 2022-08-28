import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/settings/settingscreen.dart';

class No_Notification extends StatelessWidget {
  const No_Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            text: 'Notification',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Image.asset(
            "assets/images/nonotification.png",
            height: SizeConfig.imageSizeMultiplier * 100,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          TextView(
              text: 'No Notification Yet',
              color: Colors.black,
              fontWeight: FontWeight.w700,
              size: SizeConfig.textMultiplier * 3),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: TextView(
                text:
                    'no notification right now, notifications about your activity will show up here.',
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 2),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          CustomAuthButton(
            callback: () {
              Get.to(SettingScreen());
            },
            colour: AppColors.btnclr2,
            height: SizeConfig.heightMultiplier * 8,
            width: SizeConfig.widthMultiplier * 65,
            title: 'Notifications Settings',
            fontSize: SizeConfig.textMultiplier * 2,
          )
        ],
      ),
    );
  }
}
