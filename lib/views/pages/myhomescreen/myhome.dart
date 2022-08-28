import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/addnewproperty/addnewproperty.dart';

class MyHome extends StatelessWidget {
  const MyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          Image.asset(
            "assets/images/myhomesell.png",
            height: SizeConfig.imageSizeMultiplier * 100,
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          TextView(
              text: 'Ready to Sell Your Home?',
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
                    'Rwalix is making it simpler to sell your home and move forward.',
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                size: SizeConfig.textMultiplier * 2),
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 3,
          ),
          CustomAuthButton(
            callback: () {
              Get.to(AddNewProperty());
            },
            colour: AppColors.btnclr2,
            height: SizeConfig.heightMultiplier * 8,
            width: SizeConfig.widthMultiplier * 55,
            title: 'Add Property',
            fontSize: SizeConfig.textMultiplier * 2,
          )
        ],
      ),
    );
  }
}
