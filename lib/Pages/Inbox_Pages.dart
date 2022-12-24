import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messagingapp/Common/helper_Widget.dart';
import 'package:messagingapp/Models/Storiesdata.dart';
import 'package:messagingapp/Models/chatdata.dart';
import 'package:messagingapp/Pages/Components/buildStories.dart';
import 'package:messagingapp/Pages/Components/buildchat.dart';

class Inbox_Pages extends StatefulWidget {
  const Inbox_Pages({
    Key? key,
  }) : super(key: key);

  @override
  State<Inbox_Pages> createState() => _Inbox_PagesState();
}

class _Inbox_PagesState extends State<Inbox_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ":",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            addHorizontalSpace(20),
            Text("Inbox", style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage("assets/images/mainprofile.jpg"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "23",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      "unread messages",
                      style: GoogleFonts.roboto(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[100]!, width: 2.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      addHorizontalSpace(5),
                      Text("Search friends"),
                    ],
                  ),
                ),
              ],
            ),
            addVerticalSpace(30),
            Text(
              "View Stories",
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
            ),
            addVerticalSpace(20),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey[600],
                      ),
                    ),
                    addVerticalSpace(8),
                    Text(
                      "Add Story",
                      style: GoogleFonts.roboto(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 83,
                  width: MediaQuery.of(context).size.width - 96,
                  child: ListView.builder(
                      itemCount: storiesdta.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return buildStories(storiesdata: storiesdta[index]);
                      }),
                ),
              ],
            ),
            addVerticalSpace(30),
            Text(
              "View Chats",
              style: GoogleFonts.roboto(fontWeight: FontWeight.w500),
            ),
            addVerticalSpace(20),
            Expanded(child: ListView.builder(
              shrinkWrap: true ,
              itemCount: chatdta.length,
                itemBuilder: (BuildContext context, int index) {
              return buildchat(chat: chatdta[index],);
            }))
          ],
        ),
      ),
    );
  }
}
