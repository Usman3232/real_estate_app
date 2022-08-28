import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class PastTourCard extends StatelessWidget {
  const PastTourCard({
    Key? key,
    required this.date,
    required this.status,
    required this.discription,
    required this.image,
    required this.title,
    required this.location,
    required this.price,
    required this.checkstatus,
  }) : super(key: key);
  final String date, status, discription, image, title, location;
  final int price;
  final bool checkstatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 5,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 50,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            // color: Colors.purple,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: date,
                  color: Colors.black,
                  size: SizeConfig.textMultiplier * 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 1.5,
                        width: SizeConfig.widthMultiplier * 4,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: checkstatus == false
                                ? Colors.red
                                : Colors.green),
                        child: Icon(
                          checkstatus == false ? Icons.close : Icons.check,
                          color: Colors.white,
                          size: SizeConfig.imageSizeMultiplier * 3,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 1,
                      ),
                      TextView(
                        text: checkstatus == false ? 'Cancelled' : 'Completed',
                        color: checkstatus == false ? Colors.red : Colors.green,
                        size: SizeConfig.textMultiplier * 1.6,
                      ),
                    ],
                  ),
                ),
                TextView(
                  text: discription,
                  color: Colors.black,
                  size: SizeConfig.textMultiplier * 1.8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: SizeConfig.heightMultiplier * 28,
                    width: SizeConfig.widthMultiplier * 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextView(
                          text: title,
                          size: SizeConfig.textMultiplier * 2,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.primarycolor,
                                size: SizeConfig.heightMultiplier * 2.2,
                              ),
                              TextView(
                                text: location,
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
                          text: '\$' + price.toString(),
                          size: SizeConfig.textMultiplier * 2,
                          color: AppColors.primarycolor,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
