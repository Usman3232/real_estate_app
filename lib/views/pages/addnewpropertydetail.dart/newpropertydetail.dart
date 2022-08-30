import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/aut_btn.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/addnewproperty/addnewproperty.dart';

class NewPropertyDetail extends StatefulWidget {
  final product;
  NewPropertyDetail({Key? key, required this.product}) : super(key: key);

  @override
  State<NewPropertyDetail> createState() => _NewPropertyDetailState();
}

class _NewPropertyDetailState extends State<NewPropertyDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: SizeConfig.widthMultiplier * 100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 45,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(widget.product.image),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: SizeConfig.heightMultiplier * 2,
                        left: SizeConfig.widthMultiplier * 4,
                        child: Container(
                          height: SizeConfig.heightMultiplier * 6,
                          width: SizeConfig.widthMultiplier * 13,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 5,
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back_ios_new),
                            color: Colors.black45,
                          ),
                        ),
                      ),
                      Positioned(
                        top: SizeConfig.heightMultiplier * 35,
                        left: SizeConfig.widthMultiplier * 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Primary Apartment',
                              size: SizeConfig.textMultiplier * 3,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                            TextView(
                              text: '701 Ocean Avenue, Unit 103, Santa Monica',
                              size: SizeConfig.textMultiplier * 2,
                              color: Colors.white,
                              // fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: SizeConfig.heightMultiplier * 5,
                            width: SizeConfig.widthMultiplier * 10,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.bathtub_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Bath Room',
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black38,
                            ),
                            TextView(
                              text: widget.product.bath.toString() + '  Rooms',
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: SizeConfig.heightMultiplier * 5,
                            width: SizeConfig.widthMultiplier * 10,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.bed,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Bed Room',
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black38,
                            ),
                            TextView(
                              text: widget.product.bed.toString() + '  Rooms',
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Container(
                            height: SizeConfig.heightMultiplier * 5,
                            width: SizeConfig.widthMultiplier * 10,
                            decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.attractions_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextView(
                              text: 'Square',
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black38,
                            ),
                            TextView(
                              text:
                                  widget.product.areaspace.toString() + '  Ft',
                              size: SizeConfig.textMultiplier * 1.8,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  CustomAuthButton(
                    callback: () {
                      Get.to(AddNewProperty());
                    },
                    colour: Colors.grey.shade200,
                    height: SizeConfig.heightMultiplier * 8,
                    width: SizeConfig.widthMultiplier * 100,
                    title: 'Edit Details',
                    textcolour: Colors.black,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  TextView(
                    text: 'Informations',
                    color: Colors.black,
                    size: SizeConfig.textMultiplier * 2.5,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EstimatePrice(
                        Title: 'Estimate Price',
                        percent: "-4",
                        containercolor: Colors.red.shade100,
                        percentcolor: Colors.red,
                        price: "4200",
                      ),
                      EstimatePrice(
                        Title: 'Sale Activity',
                        percent: "+102.6",
                        containercolor: Colors.green.shade100,
                        percentcolor: Colors.green,
                        price: '1 Sold',
                      ),
                      EstimatePrice(
                        Title: 'Average Price',
                        percent: "+23.6",
                        containercolor: Colors.green.shade100,
                        percentcolor: Colors.green,
                        price: "4,600.00",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 8,
                  ),
                  TextView(
                    text: 'Realix Estimate',
                    size: SizeConfig.textMultiplier * 2,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EstimatePrice extends StatelessWidget {
  const EstimatePrice({
    Key? key,
    required this.Title,
    required this.price,
    required this.percent,
    required this.percentcolor,
    required this.containercolor,
  }) : super(key: key);
  final String Title;
  final String price;
  final String percent;
  final Color percentcolor, containercolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: Title,
          color: Colors.black45,
          size: SizeConfig.textMultiplier * 1.8,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        TextView(
          text: "\$" + price.toString(),
          size: SizeConfig.textMultiplier * 2,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: containercolor),
          child: TextView(
            text: percent.toString() + '%',
            size: SizeConfig.textMultiplier * 1.8,
            color: percentcolor,
          ),
        )
      ],
    );
  }
}
