import 'package:flutter/material.dart';

import '../../../utils/TextView.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class SellMyHomeCard extends StatelessWidget {
  const SellMyHomeCard({
    Key? key,
    required this.bath,
    required this.bed,
    required this.areaspace,
    required this.price,
    required this.image,
  }) : super(key: key);
  final int bath, bed;
  final String areaspace, price, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: SizeConfig.heightMultiplier * 16,
        width: SizeConfig.widthMultiplier * 100,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 16,
              width: SizeConfig.widthMultiplier * 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextView(
                    text: "Primary Apartment",
                    color: Colors.black,
                    size: SizeConfig.textMultiplier * 2,
                    fontWeight: FontWeight.w600,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bathtub_outlined,
                        size: SizeConfig.imageSizeMultiplier * 6,
                        color: Colors.black45,
                      ),
                      TextView(
                        text: bath.toString(),
                        size: SizeConfig.textMultiplier * 2,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 2,
                      ),
                      Icon(
                        Icons.bed,
                        size: SizeConfig.imageSizeMultiplier * 6,
                        color: Colors.black45,
                      ),
                      TextView(
                        text: bed.toString(),
                        size: SizeConfig.textMultiplier * 2,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 2,
                      ),
                      Icon(
                        Icons.attractions_rounded,
                        size: SizeConfig.imageSizeMultiplier * 6,
                        color: Colors.black45,
                      ),
                      TextView(
                        text: areaspace,
                        size: SizeConfig.textMultiplier * 2,
                        color: Colors.black45,
                      ),
                      TextView(
                        text: 'Ft',
                        size: SizeConfig.textMultiplier * 1,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                  TextView(
                    text: '\$' + price,
                    size: SizeConfig.textMultiplier * 3,
                    color: AppColors.primarycolor,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
