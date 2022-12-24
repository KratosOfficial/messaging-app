import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messagingapp/Common/helper_Widget.dart';
import 'package:messagingapp/Models/calldata.dart';

class missed_calls extends StatelessWidget {
  final VoidCallback? callback;
  final calldata callModel;

  const missed_calls({Key? key, this.callback, required this.callModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(callModel.AvatarUrl),
          ),
          addHorizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                callModel.name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              addVerticalSpace(5),
              Text(
                callModel.status,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          SvgPicture.asset(
            "assets/icons/missed.svg",
            color: Colors.red,
            height: 15,
            width: 15
            ,
          ),
        ],
      ),
    );
  }
}
