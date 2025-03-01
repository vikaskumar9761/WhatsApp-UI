import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class OtpScreen extends StatelessWidget {
  String phoneNumber;


  OtpScreen({required this.phoneNumber});

  TextEditingController otp1controller=TextEditingController();
  TextEditingController otp2controller=TextEditingController();
  TextEditingController otp3controller=TextEditingController();
  TextEditingController otp4controller=TextEditingController();
  TextEditingController otp5controller=TextEditingController();
  TextEditingController otp6controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            UiHelper.CustomText(
              text: "Verifying your number",
              height: 22,
              color: Color(0xff00a884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "You've tried to register +91$phoneNumber",
              height: 14,
            ),
            UiHelper.CustomText(
              text: "recently. Wait before requesting an sms or call",
              height: 14,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "With your code. ", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                    text: "Wrong number?",
                    height: 15,
                    color: Color(0xff00a884),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CutormContainer(otp1controller),
                SizedBox(width: 10,),
                UiHelper.CutormContainer(otp2controller),
                SizedBox(width: 10,),
                UiHelper.CutormContainer(otp3controller),
                SizedBox(width: 10,),
                UiHelper.CutormContainer(otp4controller),
                SizedBox(width: 10,),
                UiHelper.CutormContainer(otp5controller),
                SizedBox(width: 10,),
                UiHelper.CutormContainer(otp6controller),


              ],
            ),
            SizedBox(height: 40,),
            UiHelper.CustomText(text: "Don't receive code", height: 14,color: Color(0xff00a884))
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){


      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
