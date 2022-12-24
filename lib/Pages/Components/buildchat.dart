import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messagingapp/Common/helper_Widget.dart';
import 'package:messagingapp/Models/chatdata.dart';

class buildchat extends StatelessWidget {
  final chatdata chat;

  const buildchat({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(chat.avatarUrl),
          ),
          addHorizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              addVerticalSpace(5),
              Text(
                chat.message,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ],
          ),
          addHorizontalSpace(20),
          Spacer(),
          SvgPicture.asset(chat.read
              ? "assets/icons/check_active.svg"
              : "assets/icons/check.svg", width: 20,),
        ],
      ),
    );
  }
}
