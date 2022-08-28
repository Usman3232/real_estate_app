import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_app/models/chatmodel.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({Key? key, required this.chatdetail})
      : super(key: key);
  final chatdetail;

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

bool istick = true;
// Message message;
TextEditingController messageController = TextEditingController();

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 35, left: 20, right: 20, bottom: 25),
            child: Row(
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 11,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26)),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                    color: Colors.black45,
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextView(
                      text: widget.chatdetail.title,
                      size: SizeConfig.textMultiplier * 2.7,
                      fontWeight: FontWeight.w500,
                    ),
                    TextView(
                      text: 'online',
                      color: Colors.green,
                      size: SizeConfig.textMultiplier * 1.7,
                    ),
                  ],
                ),
                Spacer(),
                Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: SizeConfig.widthMultiplier * 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black12),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.missed_video_call_outlined),
                      color: Colors.black38,
                    )),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 5,
                  width: SizeConfig.widthMultiplier * 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black12),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.phone,
                      color: Colors.black38,
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Expanded(
            // child: Column(),
            child: GroupedListView<Message, DateTime>(
              padding: EdgeInsets.all(8),
              reverse: true,
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              floatingHeader: true,
              addAutomaticKeepAlives: true,
              physics: BouncingScrollPhysics(),
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message) => SizedBox(
                height: 40,
                child: Center(
                    child: Card(
                  color: Colors.black,
                  child: Text(
                    DateFormat.yMMMd().format(message.date),
                    style: TextStyle(color: Colors.white),
                  ),
                )),
              ),
              itemBuilder: ((context, Message message) => Align(
                    alignment: message.isSendByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: SizeConfig.widthMultiplier * 70),
                        child: Container(
                          decoration: BoxDecoration(
                              color: message.isSendByMe
                                  ? Colors.black87
                                  : Colors.grey.shade200,
                              borderRadius: message.isSendByMe
                                  ? BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                      topLeft: Radius.circular(16))
                                  : BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              message.text,
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2,
                                  color: message.isSendByMe
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: SizeConfig.heightMultiplier * 7,
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                          prefixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                istick = !istick;
                              });
                            },
                            child: istick
                                ? Icon(
                                    Icons.add_circle,
                                    color: Colors.grey.shade400,
                                  )
                                : Icon(
                                    Icons.cancel,
                                    color: Colors.black,
                                  ),
                          ),
                          suffixIcon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.black26,
                          ),
                          hintText: 'Write a reply...',
                          hintStyle: TextStyle(color: Colors.black26),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          fillColor: Colors.black12),
                      onSubmitted: (text) {
                        print("areived");

                        // final message = Message(
                        //   text: text,
                        //   date: DateTime.now(),
                        //   isSendByMe: true,
                        // );

                        // setState(
                        //   () => messages.add(message),
                        // );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 2,
                ),
                InkWell(
                  onTap: () {
                    final message = Message(
                      text: messageController.text,
                      date: DateTime.now(),
                      isSendByMe: true,
                    );
                    messageController.clear();

                    setState(
                      () => messages.add(message),
                    );
                  },
                  child: Container(
                    height: SizeConfig.heightMultiplier * 7,
                    width: SizeConfig.widthMultiplier * 14,
                    decoration: BoxDecoration(
                      color: AppColors.btnclr2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
