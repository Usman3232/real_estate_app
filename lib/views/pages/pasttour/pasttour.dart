import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/models/pasttourmodel.dart';
import 'package:real_estate_app/utils/constants.dart';

import '../../../utils/TextView.dart';
import '../../../utils/size_config.dart';
import 'components/pasttourcard.dart';

class PastTour extends StatelessWidget {
  const PastTour({Key? key}) : super(key: key);

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
              text: 'Past Tours',
              color: Colors.black,
              fontWeight: FontWeight.w700,
              size: SizeConfig.textMultiplier * 3),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              itemCount: pasttour_model.length,
              itemBuilder: (BuildContext context, index) {
                return PastTourCard(
                    date: pasttour_model[index].date,
                    status: pasttour_model[index].status,
                    discription: pasttour_model[index].discription,
                    image: pasttour_model[index].image,
                    title: pasttour_model[index].title,
                    location: pasttour_model[index].location,
                    price: pasttour_model[index].price,
                    checkstatus: pasttour_model[index].checkstatus);
              }),
        ));
  }
}

