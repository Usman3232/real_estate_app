import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/auth_input_text_field.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool focus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: 'Description',
          size: SizeConfig.textMultiplier * 2.5,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        AuthTextInputField(
          onTap: () {
            setState(() {
              focus = true;
            });
          },
          isfocus: focus,
          cursorColor: AppColors.primarycolor,
          labelText: 'Tell us about your home here',
          bordercolor: Colors.transparent,
        )
      ],
    );
  }
}
