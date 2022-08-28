import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/auth_input_text_field.dart';
import '../../../../utils/size_config.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool streetfocus = false;
  bool cityfocus = false;
  bool unitfocus = false;
  bool statefocus = false;
  bool zipcodefocus = false;
  bool istick = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: 'Property Address',
          size: SizeConfig.textMultiplier * 2.5,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
          isfocus: streetfocus,
          labelText: 'Street adress',
          // textEditingController: passwordController,
          bordercolor: Colors.transparent,
          cursorColor: Color(0xFF2FA2B9),
          fillColor: Color(0xffF4F5F6),
          onTap: () {
            setState(() {
              streetfocus = true;
              cityfocus = false;
              unitfocus = false;
              statefocus = false;
              zipcodefocus = false;
            });
          },
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
          isfocus: unitfocus,
          labelText: 'Unit number',
          // textEditingController: passwordController,
          bordercolor: Colors.transparent,
          cursorColor: Color(0xFF2FA2B9),
          fillColor: Color(0xffF4F5F6),
          onTap: () {
            setState(() {
              streetfocus = false;
              cityfocus = false;
              unitfocus = true;
              statefocus = false;
              zipcodefocus = false;
            });
          },
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
          isfocus: cityfocus,
          labelText: 'City name',
          // textEditingController: passwordController,
          bordercolor: Colors.transparent,
          cursorColor: Color(0xFF2FA2B9),
          fillColor: Color(0xffF4F5F6),
          onTap: () {
            setState(() {
              streetfocus = false;
              cityfocus = true;
              unitfocus = false;
              statefocus = false;
              zipcodefocus = false;
            });
          },
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
          isfocus: statefocus,
          labelText: 'Select State',
          // textEditingController: passwordController,
          bordercolor: Colors.transparent,
          cursorColor: Color(0xFF2FA2B9),
          fillColor: Color(0xffF4F5F6),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  istick = !istick;
                });
              },
              icon: istick
                  ? Icon(Icons.arrow_forward_ios_outlined)
                  : Icon(Icons.keyboard_arrow_down_sharp)),
          onTap: () {
            setState(() {
              streetfocus = false;
              cityfocus = false;
              unitfocus = false;
              statefocus = true;
              zipcodefocus = false;
            });
          },
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
          isfocus: zipcodefocus,
          labelText: 'Zip code',
          // textEditingController: passwordController,
          bordercolor: Colors.transparent,
          cursorColor: Color(0xFF2FA2B9),
          fillColor: Color(0xffF4F5F6),
          onTap: () {
            setState(() {
              streetfocus = false;
              cityfocus = false;
              unitfocus = false;
              statefocus = false;
              zipcodefocus = true;
            });
          },
        ),
      ],
    );
  }
}
