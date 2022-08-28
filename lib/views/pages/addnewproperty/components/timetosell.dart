import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class TimeToSell extends StatefulWidget {
  const TimeToSell({Key? key}) : super(key: key);

  @override
  State<TimeToSell> createState() => _TimeToSellState();
}

class _TimeToSellState extends State<TimeToSell> {
  bool isselected = false;
  bool isselected2 = false;
  bool isselected3 = false;
  bool isselected4 = false;
  bool isselected5 = false;
  bool isselected6 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: 'How Soon Do you Want to sell?',
          color: Colors.black,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 2.5,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isselected = !isselected;
              isselected2 = false;
              isselected3 = false;
              isselected4 = false;
              isselected5 = false;
              isselected6 = false;
            });
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: isselected ? AppColors.primarycolor : Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextView(
                text: 'Within 3 days',
                size: SizeConfig.textMultiplier * 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isselected = false;
              isselected2 = !isselected2;
              isselected3 = false;
              isselected4 = false;
              isselected5 = false;
              isselected6 = false;
            });
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: isselected2 ? AppColors.primarycolor : Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextView(
                text: 'Within 1 days',
                size: SizeConfig.textMultiplier * 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isselected = false;
              isselected2 = false;
              isselected3 = !isselected3;
              isselected4 = false;
              isselected5 = false;
              isselected6 = false;
            });
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: isselected3 ? AppColors.primarycolor : Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextView(
                text: 'Within 1 month',
                size: SizeConfig.textMultiplier * 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isselected = false;
              isselected2 = false;
              isselected3 = false;
              isselected4 = !isselected4;
              isselected5 = false;
              isselected6 = false;
            });
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: isselected4 ? AppColors.primarycolor : Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextView(
                text: 'Within 2 months',
                size: SizeConfig.textMultiplier * 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isselected = false;
              isselected2 = false;
              isselected3 = false;
              isselected4 = false;
              isselected5 = !isselected5;
              isselected6 = false;
            });
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: isselected5 ? AppColors.primarycolor : Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextView(
                text: 'in more than 2 months',
                size: SizeConfig.textMultiplier * 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        InkWell(
          onTap: () {
            setState(() {
              isselected = false;
              isselected2 = false;
              isselected3 = false;
              isselected4 = false;
              isselected5 = false;
              isselected6 = !isselected6;
            });
          },
          child: Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: isselected6 ? AppColors.primarycolor : Colors.black12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextView(
                text: "I'am not sure",
                size: SizeConfig.textMultiplier * 1.8,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
