import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messagingapp/Common/Themes.dart';
import 'package:messagingapp/Common/helper_Widget.dart';
import 'package:messagingapp/Dashboard.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
            color: Colors.grey.withOpacity(0.3),
          ),
          Positioned(
            top: 150,
            left: 50,
            child: Image.asset(
              "assets/images/chaticon.png",
              width: 250,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                color: Colors.white,
                child: Column(
                  children: [
                    Spacer(),
                    Text("Enjoy the new \nexperience of chating",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontSize: 30, fontWeight: FontWeight.w500)),
                    addVerticalSpace(20),
                    Text(
                        "Connect you to the friends and team \naround the world for free",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            fontSize: 15, color: Colors.grey)),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15),
                              decoration: BoxDecoration(
                                color: MyTheme.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text("Get Started",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: MyTheme.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              "assets/images/in.png",
                              width: 40,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: MyTheme.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              "assets/images/apple.png",
                              width:25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
