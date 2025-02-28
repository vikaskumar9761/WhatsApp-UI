import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'package:whatsapp/Login/loginscreen.dart';

class Onbordingscreen extends StatelessWidget {
  const Onbordingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/image 1.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              fontweight: FontWeight.bold,
              color: Colors.black,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read out", height: 14),
                UiHelper.CustomText(
                  text: " Privacy Policy.",
                  height: 14,
                  color: Colors.lightBlueAccent,
                ),
                UiHelper.CustomText(
                  text: " Tap “Agree and continue”",
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: " to accept the", height: 14),
                UiHelper.CustomText(
                  text: " Teams of Service.",
                  height: 14,
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onbordingscreen()));
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
        },
        buttonname: "agree and continuous",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
