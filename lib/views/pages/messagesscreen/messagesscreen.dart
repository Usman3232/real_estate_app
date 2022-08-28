import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/models/messagemodel.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/homescreen/homescreen.dart';
import 'package:real_estate_app/views/pages/messagesscreen/chatscreen/chatscreen.dart';
import 'package:real_estate_app/views/pages/messagesscreen/components/messagecard.dart';

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: TextView(
            text: 'Message',
            color: Colors.black,
            fontWeight: FontWeight.w700,
            size: SizeConfig.textMultiplier * 3),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: message_model.length,
                itemBuilder: (context, index) {
                  return MessageCard(
                    image: message_model[index].img,
                    title: message_model[index].title,
                    message: message_model[index].message,
                    time: message_model[index].time,
                    onpressed: () {
                      Get.to(
                          ChatDetailScreen(chatdetail: message_model[index]));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
