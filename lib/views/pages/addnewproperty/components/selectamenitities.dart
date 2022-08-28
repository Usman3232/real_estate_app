import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/size_config.dart';

class SelectAmenitities extends StatefulWidget {
  const SelectAmenitities({Key? key}) : super(key: key);

  @override
  State<SelectAmenitities> createState() => _SelectAmenititiesState();
}

class _SelectAmenititiesState extends State<SelectAmenitities> {
  bool isfocus = false;
  bool isfocus2 = false;
  bool isfocus3 = false;
  bool isfocus4 = false;
  bool isfocus5 = false;
  bool isfocus6 = false;
  bool isfocus7 = false;
  bool isfocus8 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextView(
          text: 'Select Animitities',
          size: SizeConfig.textMultiplier * 2.5,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 2,
        ),
        Wrap(
          children: [
            SelectWidget(
              title: 'Free WiFi',
              isfocus: isfocus,
              onPressed: () {
                setState(() {
                  isfocus = !isfocus;
                });
              },
            ),
            SelectWidget(
              title: 'Pool',
              isfocus: isfocus2,
              onPressed: () {
                setState(() {
                  isfocus2 = !isfocus2;
                });
              },
            ),
            SelectWidget(
              title: 'Apartment',
              isfocus: isfocus3,
              onPressed: () {
                setState(() {
                  isfocus3 = !isfocus3;
                });
              },
            ),
            SelectWidget(
              title: 'Air Conditioning',
              isfocus: isfocus4,
              onPressed: () {
                setState(() {
                  isfocus4 = !isfocus4;
                });
              },
            ),
            SelectWidget(
              title: 'Spa',
              isfocus: isfocus5,
              onPressed: () {
                setState(() {
                  isfocus5 = !isfocus5;
                });
              },
            ),
            SelectWidget(
              title: 'View',
              isfocus: isfocus6,
              onPressed: () {
                setState(() {
                  isfocus6 = !isfocus6;
                });
              },
            ),
            SelectWidget(
              title: 'Elevator',
              isfocus: isfocus7,
              onPressed: () {
                setState(() {
                  isfocus7 = !isfocus7;
                });
              },
            ),
            SelectWidget(
              title: 'Garage Spots',
              isfocus: isfocus8,
              onPressed: () {
                setState(() {
                  isfocus8 = !isfocus8;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}

class SelectWidget extends StatefulWidget {
  const SelectWidget({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.isfocus,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  final bool isfocus;

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 9, bottom: 9),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  color: widget.isfocus ? Colors.black : Colors.black12,
                  width: widget.isfocus ? 2 : 1)),
          child: TextView(
            text: widget.title,
            size: SizeConfig.textMultiplier * 2,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
