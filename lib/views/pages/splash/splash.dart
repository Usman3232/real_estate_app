import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/size_config.dart';
import '../onboarding/onBoardingg.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Get.offAll(
              OnBoarding(),
              transition: Transition.downToUp,
              // :Duration(milliseconds: 400),
              curve: Curves.fastOutSlowIn,
            ));
    return Scaffold(
      body: Container(
        color: Color(0xff111827),
        height: SizeConfig.heightMultiplier * double.infinity,
        width: SizeConfig.widthMultiplier * double.infinity,
        child: Image.asset('assets/icons/Content.png'),
      ),
    );
  }
}
