import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class MeetWithAgent extends StatefulWidget {
  const MeetWithAgent({Key? key}) : super(key: key);

  @override
  State<MeetWithAgent> createState() => _MeetWithAgentState();
}

class _MeetWithAgentState extends State<MeetWithAgent> {
  var selectedDate;
  List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'Auguest',
    'September',
    'October',
    'November',
    'December'
  ];
  List Time = [
    "12:00AM",
    "12:30AM",
    "1:00AM",
    "1:30AM",
    "2:00AM",
    "2:30AM",
    "3:00AM",
    "3:30AM",
    "4:00AM",
    "4:30AM",
    "5:00AM",
    "5:30AM",
    "6:00AM",
    "6:30AM",
    "7:00AM",
    "7:30AM",
    "8:00AM",
    "8:30AM",
    "9:00AM",
    "9:30AM",
    "10:00AM",
    "10:30AM",
    "11:00AM",
    "11:30AM",
    "12:00PM",
    "12:30PM",
    "1:00PM",
    "1:30PM",
    "2:00PM",
    "2:30PM",
    "3:00PM",
    "3:30PM",
    "4:00PM",
    "4:30PM",
    "5:00PM",
    "5:30PM",
    "6:00PM",
    "6:30PM",
    "7:00PM",
    "7:30PM",
    "8:00PM",
    "8:30PM",
    "9:00PM",
    "9:30PM",
    "10:00PM",
    "10:30PM",
    "11:00PM",
    "11:30PM"
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 9,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            child: Row(children: [
              Container(
                height: SizeConfig.heightMultiplier * 7,
                width: SizeConfig.widthMultiplier * 14,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(
                    text: 'Property Adress',
                    color: Colors.black,
                    size: SizeConfig.textMultiplier * 2,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  TextView(
                    text: 'woodland St, 105, phoenix, AZ B...',
                    color: Colors.black26,
                    size: SizeConfig.textMultiplier * 2,
                    fontWeight: FontWeight.w400,
                  )
                ],
              )
            ]),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        Row(
          children: [
            TextView(
              text: months[index],
              color: Colors.black,
              size: SizeConfig.textMultiplier * 2.5,
              fontWeight: FontWeight.w700,
            ),
            Spacer(),
            Container(
              // padding: EdgeInsets.all(2),
              height: SizeConfig.heightMultiplier * 4,
              width: SizeConfig.widthMultiplier * 9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12)),
              child: IconButton(
                  padding: EdgeInsets.only(bottom: 2, left: 5),
                  onPressed: () {
                    if (index == 0) {
                      setState(() {
                        index = index;
                      });
                    } else {
                      setState(() {
                        index--;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black26,
                    size: SizeConfig.imageSizeMultiplier * 5,
                  )),
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 3,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 4,
              width: SizeConfig.widthMultiplier * 9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black12)),
              child: IconButton(
                  padding: EdgeInsets.only(bottom: 2, right: 5),
                  onPressed: () {
                    if (index == months.length - 1) {
                      setState(() {
                        index = index;
                      });
                    } else {
                      setState(() {
                        index++;
                      });
                    }
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black26,
                    size: SizeConfig.imageSizeMultiplier * 5,
                  )),
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 14,
          width: SizeConfig.widthMultiplier * 100,
          child: AnimatedHorizontalCalendar(
            date: DateTime.now(),
            textColor: Colors.black45,
            backgroundColor: Colors.white,
            tableCalenderThemeData: ThemeData.light().copyWith(
              primaryColor: AppColors.primarycolor,
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.normal),
              colorScheme: ColorScheme.light(primary: AppColors.primarycolor)
                  .copyWith(secondary: Colors.red),
            ),
            selectedBoxShadow: BoxShadow(color: Colors.transparent),
            unSelectedBoxShadow: BoxShadow(color: Colors.transparent),
            tableCalenderButtonColor: Colors.grey.shade400,
            selectedColor: AppColors.primarycolor,
            tableCalenderIcon: Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
            onDateSelected: (date) {
              selectedDate = date;
            },
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        TextView(
          text: 'Pick a time',
          color: Colors.black,
          size: SizeConfig.textMultiplier * 2.5,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier*5.5,
          child: ListView.builder(
            itemCount: Time.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 6),
                child: Container(
                  height: SizeConfig.heightMultiplier * 5.5,
                  width: SizeConfig.widthMultiplier * 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(
                    child: TextView(
                      text: Time[index],
                      size: SizeConfig.heightMultiplier * 2,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
