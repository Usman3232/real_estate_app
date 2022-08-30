import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:real_estate_app/views/pages/sellmyhome/sellmyhome.dart';
import 'package:real_estate_app/models/sellmyhomemodal.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/auth_input_text_field.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/views/pages/FAQs/faqs.dart';
import 'package:real_estate_app/views/pages/addnewproperty/components/contact.dart';
import 'package:real_estate_app/views/pages/addnewproperty/components/description.dart';
import 'package:real_estate_app/views/pages/addnewproperty/components/timetosell.dart';
import 'package:real_estate_app/views/pages/addnewpropertydetail.dart/newpropertydetail.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import 'components/Address.dart';
import 'components/homefact.dart';
import 'components/meetwithagent.dart';
import 'components/reasonsellinghome.dart';
import 'components/selectamenitities.dart';

class AddNewProperty extends StatefulWidget {
  const AddNewProperty({Key? key}) : super(key: key);

  @override
  State<AddNewProperty> createState() => _AddNewPropertyState();
}

class _AddNewPropertyState extends State<AddNewProperty> {
  String section = "address";
  double sliderVal = 12.5;
  int val = 1;
  List Title = [
    "Address",
    "Meet with a agent",
    "Time to sell",
    "Reason selling home",
    "Description",
    "Home facts",
    "Contact",
    "Select Amenitities"
  ];
  int index = 0;

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
            text: 'Add New Property',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: SizeConfig.heightMultiplier * 89,
          width: SizeConfig.widthMultiplier * 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView(
                      text: Title[index],
                      size: SizeConfig.textMultiplier * 2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 5,
                      width: SizeConfig.widthMultiplier * 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black87),
                      child: Center(
                        child: TextView(
                          text: "0$val/ 08",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2.5,
                ),
                FAProgressBar(
                  maxValue: 100,
                  progressColor: AppColors.primarycolor,
                  backgroundColor: Colors.grey.shade100,
                  size: SizeConfig.heightMultiplier * 1,
                  currentValue: sliderVal,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 3,
                ),
                section == "address"
                    ? Address()
                    : section == "meet"
                        ? MeetWithAgent()
                        : section == "time"
                            ? TimeToSell()
                            : section == "reason"
                                ? ReasonSellingHome()
                                : section == "description"
                                    ? Description()
                                    : section == "homeFact"
                                        ? HomeFact()
                                        : section == "contact"
                                            ? Contact()
                                            : section == "select"
                                                ? SelectAmenitities()
                                                : SizedBox(),
                Spacer(),
                CustomAuthButton(
                  callback: () {
                    if (section == "address") {
                      section = "meet";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "meet") {
                      section = "time";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "time") {
                      section = "reason";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "reason") {
                      section = "description";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "description") {
                      section = "homeFact";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "homeFact") {
                      section = "contact";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "contact") {
                      section = "select";
                      sliderVal = sliderVal + 12.5;
                      val = val + 1;
                    } else if (section == "select") {
                      Get.to(SellMyHome());
                    }
                    setState(() {});
                    if (index == Title.length - 1) {
                      setState(() {
                        index = index;
                      });
                    } else {
                      setState(() {
                        index++;
                      });
                    }
                  },
                  colour: AppColors.btnclr,
                  height: SizeConfig.heightMultiplier * 8,
                  width: SizeConfig.widthMultiplier * 100,
                  title: 'Next',
                  fontSize: SizeConfig.textMultiplier * 2,
                  textcolour: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
