import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messagingapp/Common/Themes.dart';
import 'package:messagingapp/Common/helper_Widget.dart';
import 'package:messagingapp/Models/Storiesdata.dart';

class buildStories extends StatelessWidget {
final Storiesdata storiesdata;

  const buildStories({Key? key, required this.storiesdata,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: MyTheme.blue.withOpacity(0.5),
                  width: 1.5,
                ),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(storiesdata.image, fit: BoxFit.cover,)),
            ),
          ),
          addVerticalSpace(8),
          Text(
            storiesdata.name,
            style: GoogleFonts.roboto(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
