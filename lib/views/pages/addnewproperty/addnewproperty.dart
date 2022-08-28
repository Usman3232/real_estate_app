import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/auth_input_text_field.dart';
import 'package:real_estate_app/utils/constants.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import 'components/Address.dart';
import 'components/reasonsellinghome.dart';
import 'components/selectamenitities.dart';

class AddNewProperty extends StatefulWidget {
  const AddNewProperty({Key? key}) : super(key: key);

  @override
  State<AddNewProperty> createState() => _AddNewPropertyState();
}

class _AddNewPropertyState extends State<AddNewProperty> {
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
                      text: 'Address',
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
                          text: '01 / 08',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2.5,
                ),
                LinearProgressIndicator(
                  value: 0.125,
                  color: AppColors.primarycolor,
                  backgroundColor: Colors.grey.shade200,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 3,
                ),
                Address(),
                // MeetWithAgent(),
                // TimeToSell(),
                // Description(),
                // ReasonSellingHome(),
                // SelectAmenitities(),
                // Contact(),

                Spacer(),
                CustomAuthButton(
                  callback: () {},
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

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool numberfocus = false;
  bool aboutfocus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextView(
          text: 'Tell us a little about Yourself',
          size: SizeConfig.textMultiplier * 2.5,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
            bordercolor: Colors.transparent,
            prefixIcon: CountryPickerDropdown(onValuePicked: (value) {
              
            },),
            onTap: () {
              setState(() {
                numberfocus = true;
                aboutfocus = false;
              });
            },
            isfocus: numberfocus),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        AuthTextInputField(
            bordercolor: Colors.transparent,
            labelText: 'Is there anything we should know?',
            onTap: () {
              setState(() {
                numberfocus = false;
                aboutfocus = true;
              });
            },
            isfocus: aboutfocus)
      ],
    );
  }
}
