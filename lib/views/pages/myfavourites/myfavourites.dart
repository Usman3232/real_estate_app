import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/models/recentlyandfavouritemodel.dart';

import '../../../utils/TextView.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class MyFavourites extends StatefulWidget {
  const MyFavourites({Key? key}) : super(key: key);

  @override
  State<MyFavourites> createState() => _MyFavouritesState();
}

class _MyFavouritesState extends State<MyFavourites> {
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
            text: 'Recently Viewed',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: SizeConfig.widthMultiplier * 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView(
                          text: 'Filter',
                          color: Colors.black,
                          size: SizeConfig.textMultiplier * 2,
                        ),
                        Icon(Icons.filter_list_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 3,
                  ),
                  Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: SizeConfig.widthMultiplier * 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView(
                          text: 'Sort',
                          color: Colors.black,
                          size: SizeConfig.textMultiplier * 2,
                        ),
                        Icon(Icons.compare_arrows_rounded)
                      ],
                    ),
                  ),
                  Spacer(),
                  TextView(
                    text: '8',
                    color: Colors.black,
                    size: SizeConfig.textMultiplier * 2,
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 1,
                  ),
                  TextView(
                    text: 'Homes',
                    color: Colors.black,
                    size: SizeConfig.textMultiplier * 2,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recentlyandfavourite_model.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: SizeConfig.heightMultiplier * 32,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                      // color: Colors.pink,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: SizeConfig.heightMultiplier * 25,
                              width: SizeConfig.widthMultiplier * 100,
                              decoration: BoxDecoration(
                                // color: Colors.purple,
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage(
                                        recentlyandfavourite_model[index]
                                            .image),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 4,
                              right: 8,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    recentlyandfavourite_model[index]
                                            .checkstatus =
                                        !recentlyandfavourite_model[index]
                                            .checkstatus;
                                  });
                                },
                                child: Container(
                                    height: SizeConfig.heightMultiplier * 6,
                                    width: SizeConfig.widthMultiplier * 11,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black26),
                                    child: recentlyandfavourite_model[index]
                                            .checkstatus
                                        ? Icon(
                                            Icons.favorite_outlined,
                                            color: Colors.red,
                                          )
                                        : Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                          )),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextView(
                                    text:
                                        recentlyandfavourite_model[index].title,
                                    size: SizeConfig.textMultiplier * 2,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: AppColors.primarycolor,
                                          size:
                                              SizeConfig.heightMultiplier * 2.2,
                                        ),
                                        TextView(
                                          text:
                                              recentlyandfavourite_model[index]
                                                  .location,
                                          size: SizeConfig.textMultiplier * 1.8,
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextView(
                                    text: 'Price',
                                    size: SizeConfig.textMultiplier * 1.8,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  TextView(
                                    text: '\$' +
                                        recentlyandfavourite_model[index]
                                            .price
                                            .toString(),
                                    size: SizeConfig.textMultiplier * 2,
                                    color: AppColors.primarycolor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
