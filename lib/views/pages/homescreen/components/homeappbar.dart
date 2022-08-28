import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';

import '../../notificationpage/no_notification.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 35,
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                  text: 'Location',
                  size: SizeConfig.textMultiplier * 1.8,
                  fontWeight: FontWeight.w300),
              SizedBox(
                height: SizeConfig.heightMultiplier * 0.5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColors.primarycolor,
                  ),
                  TextView(
                      text: 'Hanoi, Vietnam ',
                      size: SizeConfig.textMultiplier * 1.8,
                      fontWeight: FontWeight.w500),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              )
            ],
          ),
          Spacer(),
          Container(
            height: SizeConfig.heightMultiplier * 5,
            width: SizeConfig.widthMultiplier * 15,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.black26)),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(No_Notification());
            },
            child: Stack(
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 15,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.black26)),
                  child: Icon(Icons.notifications_none),
                ),
                Positioned(
                  right: SizeConfig.widthMultiplier * 5.5,
                  top: SizeConfig.heightMultiplier * 1.1,
                  child: Container(
                    height: SizeConfig.heightMultiplier * 1.5,
                    width: SizeConfig.widthMultiplier * 1.5,
                    decoration: BoxDecoration(
                        color: AppColors.primarycolor, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
