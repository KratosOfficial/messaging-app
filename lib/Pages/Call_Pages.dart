import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messagingapp/Common/helper_Widget.dart';
import 'package:messagingapp/Models/calldata.dart';
import 'package:messagingapp/Pages/Components/all_calls.dart';
import 'package:messagingapp/Pages/Components/missed_calls.dart';

class Call_Pages extends StatefulWidget {
  const Call_Pages({Key? key}) : super(key: key);

  @override
  State<Call_Pages> createState() => _Call_PagesState();
}

class _Call_PagesState extends State<Call_Pages> {
  int selectedIndex = 0;

  Widget getFragment() {
    if (selectedIndex == 0)
      return Expanded(
        child: ListView.builder(itemCount:calldta.length  ,itemBuilder: (BuildContext context, int index) {
          return all_calls(callModel: calldta[index]);
        }),
      );
    else
      return Expanded(
        child: ListView.builder(itemCount:calldta.length  ,itemBuilder: (BuildContext context, int index) {
          return missed_calls(callModel: calldta[index]);
        }),
      );
  }

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
            Text("Calls", style: TextStyle(color: Colors.black)),
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "56",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "audio, video calls",
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
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectedIndex = 0;
                            setState(() {});
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                "All",
                                style: TextStyle(
                                  color: selectedIndex == 0
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            selectedIndex = 1;
                            setState(() {});
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: selectedIndex == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: Text(
                                "Missed",
                                style: TextStyle(
                                  color: selectedIndex == 1
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                getFragment(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("50 more..", style: GoogleFonts.roboto(color: Colors.grey),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
