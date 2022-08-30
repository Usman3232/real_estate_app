import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/models/sellmyhomemodal.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/views/pages/addnewproperty/addnewproperty.dart';
import 'package:real_estate_app/views/pages/addnewpropertydetail.dart/newpropertydetail.dart';
import 'package:real_estate_app/views/pages/sellmyhome/sellmyhomecard.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';

class SellMyHome extends StatelessWidget {
  const SellMyHome({Key? key}) : super(key: key);

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
            text: 'My Home',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: sellmyhome_model.length,
                itemBuilder: (context, index) {
                  return SellMyHomeCard(
                    bath: sellmyhome_model[index].bath,
                    bed: sellmyhome_model[index].bed,
                    areaspace: sellmyhome_model[index].areaspace,
                    price: sellmyhome_model[index].price,
                    image: sellmyhome_model[index].image,
                    onPressed: () {
                      Get.to(NewPropertyDetail(
                        product: sellmyhome_model[index],
                      ));
                    },
                  );
                },
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              CustomAuthButton(
                callback: () {
                  Get.to(AddNewProperty());
                },
                colour: Colors.grey.shade100,
                height: SizeConfig.heightMultiplier * 10,
                width: SizeConfig.widthMultiplier * 100,
                title: 'Add new Property',
                textcolour: Colors.black,
                fontSize: SizeConfig.textMultiplier * 2.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
