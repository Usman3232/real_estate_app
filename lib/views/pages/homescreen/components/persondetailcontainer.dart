import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';

class PersondetailContainer extends StatelessWidget {
  const PersondetailContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: SizeConfig.heightMultiplier * 20,
      width: SizeConfig.widthMultiplier * 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: 'Mighty Cinco Family',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                size: SizeConfig.textMultiplier * 2.2,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primarycolor,
                    size: SizeConfig.heightMultiplier * 2.2,
                  ),
                  TextView(
                    text: 'Jakarta, Indonasia',
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    size: SizeConfig.textMultiplier * 1.6,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 6,
                    width: SizeConfig.widthMultiplier * 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/personimg.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 1.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextView(
                        text: "Buyer's Agent",
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        size: SizeConfig.textMultiplier * 1.5,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 0.8,
                      ),
                      TextView(
                        text: "Dania Richard",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        size: SizeConfig.textMultiplier * 1.5,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.local_convenience_store_rounded,
                    color: AppColors.primarycolor,
                    size: SizeConfig.imageSizeMultiplier * 5,
                  ),
                  TextView(
                    text: "Jan 1, 2022",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: SizeConfig.textMultiplier * 1.8,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 1,
              ),
              Row(
                children: [
                  Icon(
                    Icons.timelapse_sharp,
                    color: AppColors.primarycolor,
                    size: SizeConfig.imageSizeMultiplier * 5,
                  ),
                  TextView(
                    text: "6:00 AM",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    size: SizeConfig.textMultiplier * 1.8,
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: SizeConfig.heightMultiplier * 6,
                width: SizeConfig.widthMultiplier * 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.primarycolor)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      SizedBox(
                        width: SizeConfig.widthMultiplier * 2,
                      ),
                      TextView(
                        text: "Phone",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        size: SizeConfig.textMultiplier * 2,
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
