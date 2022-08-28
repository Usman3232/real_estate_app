import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class ReasonSellingHome extends StatefulWidget {
  const ReasonSellingHome({Key? key}) : super(key: key);

  @override
  State<ReasonSellingHome> createState() => _ReasonSellingHomeState();
}

class _ReasonSellingHomeState extends State<ReasonSellingHome> {
  bool value = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool focus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: 'Why are you selling your home?',
          size: SizeConfig.textMultiplier * 2.5,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            children: [
              Checkbox(
                activeColor: AppColors.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // tristate: true,
                value: this.value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
              TextView(
                text: 'Upgrading my home',
                size: SizeConfig.textMultiplier * 2,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            children: [
              Checkbox(
                activeColor: AppColors.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // tristate: true,
                value: this.value2,
                onChanged: (value2) {
                  setState(() {
                    this.value2 = value2!;
                  });
                },
              ),
              TextView(
                text: 'Selling Secondary home',
                size: SizeConfig.textMultiplier * 2,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            children: [
              Checkbox(
                activeColor: AppColors.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // tristate: true,
                value: this.value3,
                onChanged: (value3) {
                  setState(() {
                    this.value3 = value3!;
                  });
                },
              ),
              TextView(
                text: 'Relocating',
                size: SizeConfig.textMultiplier * 2,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            children: [
              Checkbox(
                activeColor: AppColors.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // tristate: true,
                value: this.value4,
                onChanged: (value4) {
                  setState(() {
                    this.value4 = value4!;
                  });
                },
              ),
              TextView(
                text: 'Downsizing my home',
                size: SizeConfig.textMultiplier * 2,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 6,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            children: [
              Checkbox(
                activeColor: AppColors.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // tristate: true,
                value: this.value5,
                onChanged: (value5) {
                  setState(() {
                    this.value5 = value5!;
                  });
                },
              ),
              TextView(
                text: 'Retiring',
                size: SizeConfig.textMultiplier * 2,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 15.5,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: AppColors.primarycolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // tristate: true,
                value: this.value6,
                onChanged: (value6) {
                  setState(() {
                    this.value6 = value6!;
                  });
                },
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 2),
                    child: TextView(
                      text: 'Other',
                      size: SizeConfig.textMultiplier * 2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextView(
                    text: 'please enter your reason for selling:',
                    size: SizeConfig.textMultiplier * 1.5,
                    color: Colors.black45,
                  ),
                  Container(
                    height: SizeConfig.heightMultiplier * 9.3,
                    width: SizeConfig.widthMultiplier * 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                          color:
                              focus ? AppColors.primarycolor : Colors.black12),
                    ),
                    child: TextFormField(
                      cursorColor: AppColors.primarycolor,
                      maxLines: 5,
                      onTap: () {
                        setState(() {
                          focus = true;
                        });
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "E.g:I'm helping my parents sell their home",
                        hintStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: SizeConfig.textMultiplier * 1.5),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
