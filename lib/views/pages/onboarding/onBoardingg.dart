import 'dart:math';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/constants.dart';
import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import '../authentication/signin.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _controller = PageController();
  int selectedIndex = 0;

  static const _kDuration = Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  final _kArrowColor = Colors.black.withOpacity(0.8);

  final List<Widget> _pages = <Widget>[
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Stack(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 100,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Img.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: SizeConfig.heightMultiplier * 31,
                width: SizeConfig.widthMultiplier * 100,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView(
                      text: 'Welcome And Stay Relax ',
                      color: Colors.white,
                      size: SizeConfig.textMultiplier * 3.5,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Lorem Ipsum is simply dummy text of the printing\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textMultiplier * 1.7),
                          ),
                          TextSpan(
                            text: "an typesetting industry",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textMultiplier * 2),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Stack(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 100,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Img2.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                height: SizeConfig.heightMultiplier * 31,
                width: SizeConfig.widthMultiplier * 100,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextView(
                      text: 'Enjoy the beautiful world',
                      color: Colors.white,
                      size: SizeConfig.textMultiplier * 3.5,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 2,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Lorem Ipsum is simply dummy text of the printing\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textMultiplier * 1.7),
                          ),
                          TextSpan(
                            text: "an typesetting industry",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.textMultiplier * 2),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              itemCount: _pages.length,
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return _pages[index];
              },
            ),
            Positioned(
              bottom: SizeConfig.heightMultiplier * 17,
              left: SizeConfig.widthMultiplier * 40,
              child: DotsIndicator(
                decorator: DotsDecorator(
                  activeColor: Colors.white,
                  color: Colors.grey.shade400,
                  size: const Size(10, 10),
                  activeSize: const Size(35, 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                dotsCount: _pages.length,
                position: double.parse(selectedIndex.toString()),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: selectedIndex == _pages.length - 1
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CustomAuthButton(
                        callback: () {
                          Get.to(SignIn());
                        },
                        colour: Color(0xff2FA2B9),
                        height: SizeConfig.heightMultiplier * 8,
                        width: SizeConfig.widthMultiplier * 100,
                        title: 'Get Started',
                        fontSize: SizeConfig.textMultiplier * 2,
                      ),
                    )
                  : Container(
                      height: SizeConfig.heightMultiplier * 8,
                      width: SizeConfig.widthMultiplier * 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primarycolor),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 25,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            selectedIndex = selectedIndex + 1;
                            _controller.jumpToPage(selectedIndex);
                          });
                        },
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
