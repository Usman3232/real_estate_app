import 'package:flutter/material.dart';
import 'package:real_estate_app/models/homemodel.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';

class HomeCard extends StatefulWidget {
  HomeCard({
    Key? key,
    required this.image,
    required this.title,
    required this.location,
    required this.price,
    required this.checkstatus,
  }) : super(key: key);
  final String image;
  final String title;
  final String location;
  final double price;
  bool checkstatus;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 45,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(widget.image), fit: BoxFit.cover)),
        ),
        Positioned(
          top: SizeConfig.heightMultiplier * 2,
          right: SizeConfig.widthMultiplier * 5,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.checkstatus = !widget.checkstatus;
              });
            },
            child: Container(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black45),
              child: widget.checkstatus
                  ? Icon(
                      Icons.favorite_outlined,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.heightMultiplier * 2.5,
          left: SizeConfig.widthMultiplier * 5,
          right: SizeConfig.widthMultiplier * 5,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            height: SizeConfig.heightMultiplier * 12,
            width: SizeConfig.widthMultiplier * 75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: widget.title,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      size: SizeConfig.textMultiplier * 2.2,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1.7,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.primarycolor,
                          size: SizeConfig.heightMultiplier * 2.2,
                        ),
                        TextView(
                          text: widget.location,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          size: SizeConfig.textMultiplier * 1.6,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextView(
                      text: '\$' + widget.price.toString(),
                      color: AppColors.primarycolor,
                      fontWeight: FontWeight.w700,
                      size: SizeConfig.textMultiplier * 3,
                    ),
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 1.1,
                    ),
                    TextView(
                      text: 'per month',
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      size: SizeConfig.textMultiplier * 1.8,
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
