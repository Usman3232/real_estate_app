import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/constants.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';

class Faqs extends StatelessWidget {
  const Faqs({Key? key}) : super(key: key);

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
            text: 'FAQs',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search questions..',
                    filled: true,
                    fillColor: Color(0xffF4F5F6),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                ),
              ),
              TextView(
                text: 'Frequently Asked',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                size: SizeConfig.textMultiplier * 3,
              ),
              ExpansionTile(
                title: TextView(text: 'How does Realix work?'),
                children: [
                  TextView(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laoreet nulla lorem eget praesent arcu. Nam tellus faucibus blandit dis est ultrices pretium.Dui faucibus malesuada viverra suspendisse at dictumst aenean eget dolor. Orci ornare morbi ut nibh ultricies at lobortis.',
                    color: Colors.black54,
                    size: SizeConfig.textMultiplier * 1.8,
                  )
                ],
                textColor: Colors.black,
                iconColor: Colors.black,
              ),
              ExpansionTile(
                title: TextView(text: 'Who can buy a home?'),
                children: [
                  TextView(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laoreet nulla lorem eget praesent arcu. Nam tellus faucibus blandit dis est ultrices pretium.Dui faucibus malesuada viverra suspendisse at dictumst aenean eget dolor. Orci ornare morbi ut nibh ultricies at lobortis.',
                    color: Colors.black54,
                    size: SizeConfig.textMultiplier * 1.8,
                  )
                ],
                textColor: Colors.black,
                iconColor: Colors.black,
              ),
              ExpansionTile(
                title: TextView(text: 'How can i sell my home?'),
                children: [
                  TextView(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laoreet nulla lorem eget praesent arcu. Nam tellus faucibus blandit dis est ultrices pretium.Dui faucibus malesuada viverra suspendisse at dictumst aenean eget dolor. Orci ornare morbi ut nibh ultricies at lobortis.',
                    color: Colors.black54,
                    size: SizeConfig.textMultiplier * 1.8,
                  )
                ],
                textColor: Colors.black,
                iconColor: Colors.black,
              ),
              ExpansionTile(
                title: TextView(text: 'How do i contact a local agent?'),
                children: [
                  TextView(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Laoreet nulla lorem eget praesent arcu. Nam tellus faucibus blandit dis est ultrices pretium.Dui faucibus malesuada viverra suspendisse at dictumst aenean eget dolor. Orci ornare morbi ut nibh ultricies at lobortis.',
                    color: Colors.black54,
                    size: SizeConfig.textMultiplier * 1.8,
                  )
                ],
                textColor: Colors.black,
                iconColor: Colors.black,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextView(
                      text: 'Show all',
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w400,
                      size: SizeConfig.textMultiplier * 2,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 2,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.primarycolor,
                      size: SizeConfig.heightMultiplier * 2.5,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
