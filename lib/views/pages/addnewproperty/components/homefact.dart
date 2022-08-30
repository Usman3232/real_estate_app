import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/constants.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/auth_input_text_field.dart';
import '../../../../utils/size_config.dart';

class HomeFact extends StatefulWidget {
  const HomeFact({Key? key}) : super(key: key);

  @override
  State<HomeFact> createState() => _HomeFactState();
}

class _HomeFactState extends State<HomeFact> {
  bool focus = false;
  bool istick = false;
  TextEditingController selecttypecontroller = TextEditingController();

  List propertytype = ["Residential", "Commertial"];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: 'Home Fact',
          size: SizeConfig.textMultiplier * 2.2,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        TextView(
          text: 'This helps your agent prepare the most accurate home estimate',
          size: SizeConfig.textMultiplier * 1.6,
          color: Colors.black54,
          // fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        TextView(
          text: 'Type Property',
          size: SizeConfig.textMultiplier * 1.8,
          color: Colors.black,
          // fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 7,
          child: AuthTextInputField(
              bordercolor: Colors.transparent,
              labelText: 'Select type',
              textEditingController: selecttypecontroller,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    istick = !istick;
                  });

                  Get.dialog(Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Center(
                      child: Container(
                          height: SizeConfig.heightMultiplier * 20,
                          width: SizeConfig.widthMultiplier * 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: propertytype.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selecttypecontroller.text =
                                          propertytype[index];
                                    });
                                    Get.back();
                                  },
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: TextView(
                                        text: propertytype[index],
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
                  focus = true;
                });
              },
              isfocus: focus),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextView(
                        text: 'Finished Sq. Ft.',
                        size: SizeConfig.textMultiplier * 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 3,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100, shape: BoxShape.circle),
                      child: Icon(
                        CupertinoIcons.exclamationmark,
                        color: AppColors.primarycolor,
                        size: SizeConfig.imageSizeMultiplier * 3.5,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 44,
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                    onTap: () {},
                    hintText: '0',
                    isfocus: false,
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextView(
                        text: 'Lot Size',
                        size: SizeConfig.textMultiplier * 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 44,
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                    onTap: () {},
                    hintText: '0 Sq. Ft.',
                    isfocus: false,
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextView(
                        text: 'Year Built',
                        size: SizeConfig.textMultiplier * 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 44,
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                    onTap: () {},
                    hintText: '0',
                    isfocus: false,
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextView(
                        text: 'Bedrooms',
                        size: SizeConfig.textMultiplier * 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 44,
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                    onTap: () {},
                    hintText: '0',
                    isfocus: false,
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextView(
                        text: 'Full Baths',
                        size: SizeConfig.textMultiplier * 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 3,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100, shape: BoxShape.circle),
                      child: Icon(
                        CupertinoIcons.exclamationmark,
                        color: AppColors.primarycolor,
                        size: SizeConfig.imageSizeMultiplier * 3.5,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 44,
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                    onTap: () {},
                    hintText: '0',
                    isfocus: false,
                  ),
                )
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextView(
                        text: 'Lot Size',
                        size: SizeConfig.textMultiplier * 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: SizeConfig.heightMultiplier * 3,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100, shape: BoxShape.circle),
                      child: Icon(
                        CupertinoIcons.exclamationmark,
                        color: AppColors.primarycolor,
                        size: SizeConfig.imageSizeMultiplier * 3.5,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 44,
                  height: SizeConfig.heightMultiplier * 6,
                  child: AuthTextInputField(
                    onTap: () {},
                    hintText: '0 Sq. Ft.',
                    isfocus: false,
                  ),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextView(
            text: 'Monthly Rent*',
            size: SizeConfig.textMultiplier * 1.5,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: SizeConfig.widthMultiplier * 44,
          height: SizeConfig.heightMultiplier * 6,
          child: AuthTextInputField(
            onTap: () {},
            hintText: '0',
            isfocus: false,
          ),
        )
      ],
    );
  }
}
