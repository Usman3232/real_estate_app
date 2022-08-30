import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/views/pages/authentication/signin.dart';
import 'package:real_estate_app/views/pages/myhomescreen/myhome.dart';

import 'utils/size_config.dart';
import 'views/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              home: Splash(),
              // home: MyHome(),
              // home:Onboard(),
              // home: SignIn(),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
