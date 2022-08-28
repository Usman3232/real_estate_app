import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../utils/size_config.dart';

class Upload_image extends StatefulWidget {
  const Upload_image({
    Key? key,
  }) : super(key: key);

  @override
  State<Upload_image> createState() => _Upload_imageState();
}

class _Upload_imageState extends State<Upload_image> {
  final ImagePicker _picker = ImagePicker();

  File? images;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      images != null
          ?
          //  Container(
          //     height: SizeConfig.heightMultiplier * 12,
          //     decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Color(0xffF8FAFF),
          //         image: DecorationImage(image: FileImage(images!))),
          //   )
          CircleAvatar(
              radius: SizeConfig.heightMultiplier * 6,
              backgroundColor: Color(0xffF8FAFF),
              backgroundImage: FileImage(images!),
            )
          : Container(
              height: SizeConfig.heightMultiplier * 12,
              width: SizeConfig.widthMultiplier*24,
              decoration: BoxDecoration(
                  color: Color(0xffF8FAFF),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    'assets/icons/ImageSquare.png',
                  )))),

      //  CircleAvatar(
      //     radius: SizeConfig.heightMultiplier * 6,
      //     backgroundColor: Color(0xffF8FAFF),
      //     backgroundImage: AssetImage('assets/icons/ImageSquare.png',),
      //   )

      

      Positioned(
        bottom: 0,
        right: 0,
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (_) => CupertinoAlertDialog(
                      title: Text("Choose From"),
                      actions: [
                        CupertinoDialogAction(
                          child: GestureDetector(
                            child: Text('Camera'),
                            onTap: () {
                              getImage(ImageSource.camera);
                            },
                          ),
                        ),
                        CupertinoDialogAction(
                          child: GestureDetector(
                            child: Text('Gallery'),
                            onTap: () {
                              getImage(ImageSource.gallery);
                            },
                          ),
                        )
                      ],
                    ));
          },
          child: Image.asset(
            "assets/icons/add.png",
            height: 40,
            width: 40,
          ),
        ),
      )
    ]);
  }

  getImage(ImageSource source) async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: source,
    );
    if (pickedFile != null) {
      setState(() {
        images = File(pickedFile.path);
        // Get.find<AuthController>().pickedImagePath.value = pickedFile.path;
      });
      Get.back();
    }
  }
}
