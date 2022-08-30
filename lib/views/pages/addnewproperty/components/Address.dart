import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
  // String state = '';
  TextEditingController streetaddresscontroller = TextEditingController();
  TextEditingController unitcontroller = TextEditingController();
  TextEditingController citynamecontroller = TextEditingController();
  TextEditingController selectstatecontroller = TextEditingController();
  TextEditingController zipcodecontroller = TextEditingController();

  List regions = ["Punjab", "Sidh", "Balochistan", "KPK"];
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
          inputType: TextInputType.streetAddress,
          textEditingController: streetaddresscontroller,
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

          inputType: TextInputType.number,
          textEditingController: unitcontroller,
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
          textEditingController: citynamecontroller,
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
          textEditingController: selectstatecontroller,
          bordercolor: Colors.transparent,
          cursorColor: Color(0xFF2FA2B9),
          fillColor: Color(0xffF4F5F6),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                istick = !istick;
              });

              Get.dialog(Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Container(
                      height: SizeConfig.heightMultiplier * 40,
                      width: SizeConfig.widthMultiplier * 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: regions.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectstatecontroller.text = regions[index];
                                });
                                Get.back();
                              },
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: TextView(
                                    text: regions[index],
                                    color: Colors.black,
                                    size: SizeConfig.textMultiplier * 3,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )),
                ),
              ));
            },
            icon: istick
                ? Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black26,
                    size: SizeConfig.imageSizeMultiplier * 6,
                  )
                : Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: SizeConfig.imageSizeMultiplier * 9,
                    color: Colors.black26,
                  ),
          ),
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
          validator: (val){
            return null;
          },
          isfocus: zipcodefocus,
          labelText: 'Zip code',
          textEditingController: zipcodecontroller,
          inputType: TextInputType.number,
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
