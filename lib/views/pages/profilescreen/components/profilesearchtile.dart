import 'package:flutter/material.dart';

import '../../../../utils/TextView.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/size_config.dart';

class ProfileSearchTile extends StatelessWidget {
  const ProfileSearchTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Container(
              height: SizeConfig.heightMultiplier * 5,
              width: SizeConfig.widthMultiplier * 13,
              decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(16)),
              child: Icon(
                icon,
                color: AppColors.primarycolor,
              ),
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 5,
            ),
            TextView(
              text: title,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              size: SizeConfig.textMultiplier * 2,
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black54,
              size: SizeConfig.heightMultiplier * 2,
            )
          ],
        ),
      ),
    );
  }
}
