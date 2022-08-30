import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/auth_input_text_field.dart';
import '../../../../utils/size_config.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool numberfocus = false;
  bool aboutfocus = false;
  final countryPicker = FlCountryCodePicker();
  CountryCode? countryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextView(
          text: 'Tell us a little about Yourself',
          size: SizeConfig.textMultiplier * 2.5,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Container(
          height: SizeConfig.heightMultiplier * 7.5,
          width: SizeConfig.widthMultiplier * 100,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () async {
                    final code =
                        await countryPicker.showPicker(context: context);
                    setState(() {
                      countryCode = code;
                    });
                  },
                  child: countryCode != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: countryCode!.flagImage,
                        )
                      : Container(
                          height: SizeConfig.heightMultiplier * 2.5,
                          width: SizeConfig.widthMultiplier * 8,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(6)),
                        ),
                ),
              ),
              Expanded(
                child: AuthTextInputField(
                    bordercolor: Colors.transparent,
                    inputType: TextInputType.number,
                    hintText: 'Phone nuumber',
                    onTap: () {
                      setState(() {
                        numberfocus = false;
                        aboutfocus = false;
                      });
                    },
                    isfocus: numberfocus),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 3,
        ),
        AuthTextInputField(
            bordercolor: Colors.transparent,
            labelText: 'Is there anything we should know?',
            onTap: () {
              setState(() {
                numberfocus = false;
                aboutfocus = false;
              });
            },
            isfocus: aboutfocus)
      ],
    );
  }
}
