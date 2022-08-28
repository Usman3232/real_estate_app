import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/auth_input_text_field.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/bottom_navigation/bottom_navigation_tab.dart';
import 'package:real_estate_app/views/pages/homescreen/homescreen.dart';

import 'signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool phonefocus = false;
  bool passwardfocus = false;
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              TextView(
                text: 'Welcome back!',
                size: SizeConfig.textMultiplier * 3.4,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              TextView(
                text: 'Sign in to Your account',
                size: SizeConfig.textMultiplier * 2.2,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6,
              ),
              AuthTextInputField(
                isfocus: phonefocus,
                labelText: 'Phone number',
                textEditingController: phoneController,
                bordercolor: Colors.transparent,
                cursorColor: Color(0xFF2FA2B9),
                fillColor: Color(0xffF4F5F6),
                inputType: TextInputType.phone,
                onTap: () {
                  setState(() {
                    phonefocus = true;
                    passwardfocus = false;
                  });
                },
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              AuthTextInputField(
                isfocus: passwardfocus,
                labelText: 'passward',
                textEditingController: passwordController,
                bordercolor: Colors.transparent,
                cursorColor: Color(0xFF2FA2B9),
                fillColor: Color(0xffF4F5F6),
                inputType: TextInputType.phone,
                isPassword: true,
                onTap: () {
                  setState(() {
                    phonefocus = false;
                    passwardfocus = true;
                  });
                },
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              CustomAuthButton(
                callback: () {
                  if (phoneController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    Get.snackbar('Error', 'Please fill complete data :(',
                        backgroundColor: Colors.red);
                  } else {
                    phoneController.clear();
                    passwordController.clear();
                    Get.to(BottomBar());
                    Get.snackbar('Success', ' Login Succesfully completed :)',
                        backgroundColor: Colors.green);
                  }
                },
                colour: AppColors.btnclr,
                height: SizeConfig.heightMultiplier * 8,
                width: SizeConfig.widthMultiplier * 100,
                title: 'Sign In',
                fontSize: SizeConfig.textMultiplier * 2,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              Align(
                alignment: Alignment.center,
                child: TextView(
                  text: 'Forgot passward?',
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  size: SizeConfig.textMultiplier * 1.8,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 15,
              ),
              Align(
                alignment: Alignment.center,
                child: TextView(
                  text: 'Or continue with social account',
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  size: SizeConfig.textMultiplier * 2.1,
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              Container(
                height: SizeConfig.heightMultiplier * 8,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/google.png'),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    TextView(
                      text: 'Google',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      size: SizeConfig.textMultiplier * 2,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1.5,
              ),
              Container(
                height: SizeConfig.heightMultiplier * 8,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Facebook.png'),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    TextView(
                      text: 'Foaebook',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      size: SizeConfig.textMultiplier * 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextView(
                      text: "Don't have an account?",
                      color: Colors.black38,
                      size: SizeConfig.textMultiplier * 2),
                  InkWell(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: TextView(
                      text: "Sign Up",
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w500,
                      size: SizeConfig.textMultiplier * 2,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
