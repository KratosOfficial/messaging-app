import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messagingapp/Common/helper_Widget.dart';

class Settings_Pages extends StatefulWidget {
  const Settings_Pages({Key? key}) : super(key: key);

  @override
  State<Settings_Pages> createState() => _Settings_PagesState();
}

class _Settings_PagesState extends State<Settings_Pages> {
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
            Text("Settings", style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.orange,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                          width: 2,
                          color:Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            addVerticalSpace(20),
            ListTile(
              leading: SvgPicture.asset("assets/icons/account.svg"),
              title: Text("Account Settings", style: GoogleFonts.roboto(fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/light.svg"),
              title: Text("App Theme", style: GoogleFonts.roboto(fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/notifications.svg"),
              title: Text("Notifications", style: GoogleFonts.roboto(fontWeight: FontWeight.w400),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Light", style: GoogleFonts.roboto(fontWeight: FontWeight.w400, fontSize: 15,color: Colors.grey[500]),),
                  addHorizontalSpace(5),

                  Icon(Icons.arrow_forward_ios, size: 20,),
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/switch.svg"),
              title: Text("Switch Account", style: GoogleFonts.roboto(fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/problem.svg"),
              title: Text("Report Problem", style: GoogleFonts.roboto(fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
            ListTile(
              leading: SvgPicture.asset("assets/icons/help.svg"),
              title: Text("Help", style: GoogleFonts.roboto(fontWeight: FontWeight.w400),),
              trailing: Icon(Icons.arrow_forward_ios, size: 20,),
            ),
            addVerticalSpace(30),
            ListTile(
              leading: SvgPicture.asset("assets/icons/logout.svg", color: Colors.red,),
              title: Text("Logout", style: GoogleFonts.roboto(fontWeight: FontWeight.w400, color: Colors.red),),
            ),

          ],
        ),
      ) ,
    );
  }
}
