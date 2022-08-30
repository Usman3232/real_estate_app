import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/views/pages/FAQs/faqs.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import 'components/applicationtile.dart';
import 'components/supporttile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

bool _switchValue1 = true;
bool _switchValue2 = false;

class _SettingScreenState extends State<SettingScreen> {
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
            text: 'Settings',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(
              text: 'Application Settings',
              color: Colors.black54,
              size: SizeConfig.textMultiplier * 2,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2.5,
            ),
            Row(
              children: [
                TextView(
                  text: 'Notification',
                  color: Colors.black,
                  size: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w500,
                ),
                Spacer(),
                CupertinoSwitch(
                  activeColor: AppColors.primarycolor,
                  value: _switchValue1,
                  onChanged: (value) {
                    setState(() {
                      _switchValue1 = value;
                    });
                  },
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                TextView(
                  text: 'Dark Mode',
                  color: Colors.black,
                  size: SizeConfig.textMultiplier * 2,
                  fontWeight: FontWeight.w500,
                ),
                Spacer(),
                CupertinoSwitch(
                  activeColor: AppColors.primarycolor,
                  value: _switchValue2,
                  onChanged: (value) {
                    setState(() {
                      _switchValue2 = value;
                    });
                  },
                ),
              ],
            ),
            Divider(),
            ApplicationTile(
              title: 'Language',
              name: 'English',
            ),
            Divider(),
            ApplicationTile(
              title: 'Country',
              name: 'US',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: TextView(
                text: 'Support',
                color: Colors.black54,
                size: SizeConfig.textMultiplier * 2,
                fontWeight: FontWeight.w600,
              ),
            ),
            SupportTile(
              title: 'Term of use',
              onPressed: () {},
            ),
            Divider(),
            SupportTile(
              title: 'Privacy policy',
              onPressed: () {},
            ),
            Divider(),
            SupportTile(
              title: 'About',
              onPressed: () {},
            ),
            Divider(),
            SupportTile(
              title: 'FAQs',
              onPressed: () {
                Get.to(Faqs());
              },
            ),
          ],
        ),
      ),
    );
  }
}
