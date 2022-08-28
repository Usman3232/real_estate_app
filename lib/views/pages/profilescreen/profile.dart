import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/views/pages/addnewproperty/addnewproperty.dart';
import 'package:real_estate_app/views/pages/editprofile/editprofile.dart';
import 'package:real_estate_app/views/pages/myfavourites/myfavourites.dart';
import 'package:real_estate_app/views/pages/pasttour/pasttour.dart';
import 'package:real_estate_app/views/pages/editprofile/components/upload_image.dart';
import 'package:real_estate_app/views/pages/recentlyviewed/recentlyviewed.dart';
import 'package:real_estate_app/views/pages/sellmyhome/sellmyhome.dart';
import 'package:real_estate_app/views/pages/settings/settingscreen.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import 'components/profilesearchtile.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

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
            text: 'Profile',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 12,
                        width: SizeConfig.widthMultiplier * 24,
                        decoration: BoxDecoration(
                          color: Color(0xffF8FAFF),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/ImageSquare.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            Get.to(EditProfile());
                          },
                          child: Image.asset(
                            "assets/icons/add.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1,
                  ),
                  TextView(
                    text: 'Andrew Preston',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    size: SizeConfig.textMultiplier * 3,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 0.5,
                  ),
                  TextView(
                    text: 'andrew.hello@gmail.com',
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    size: SizeConfig.textMultiplier * 2.2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'Home search',
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              size: SizeConfig.textMultiplier * 2.2,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            ProfileSearchTile(
              title: 'Recently viewed',
              icon: Icons.visibility_outlined,
              onPressed: () {
                Get.to(RecentlyViewed());
              },
            ),
            ProfileSearchTile(
              title: 'My favourites',
              icon: Icons.favorite_border_outlined,
              onPressed: () {
                Get.to(MyFavourites());
              },
            ),
            ProfileSearchTile(
              title: 'Past Tour',
              icon: Icons.edit_calendar_outlined,
              onPressed: () {
                Get.to(PastTour());
              },
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            TextView(
              text: 'General',
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              size: SizeConfig.textMultiplier * 2.2,
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            ProfileSearchTile(
              title: 'Sell My home',
              icon: Icons.note,
              onPressed: () {
                Get.to(AddNewProperty());
              },
            ),
            ProfileSearchTile(
              title: 'My listings',
              icon: Icons.home_work_sharp,
              onPressed: () {
                Get.to(SellMyHome());
              },
            ),
            ProfileSearchTile(
              title: 'Settings',
              icon: Icons.settings,
              onPressed: () {
                Get.to(SettingScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
