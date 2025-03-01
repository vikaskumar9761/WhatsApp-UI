import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'package:whatsapp/Screens/OTP/otp_screen.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneControler = TextEditingController();
  List<String> countries = [
    "India",
    "USA",
    "Canada",
    "Australia",
    "Germany",
    "France",
    "Italy",
    "Japan",
    "China",
    "Brazil",
    "Russia",
    "South Africa",
    "Mexico",
    "Argentina",
    "Spain",
    "UK",
    "Netherlands",
    "Switzerland",
    "Sweden",
    "Norway",
    "Denmark",
    "Finland",
    "Poland",
    "Ukraine",
    "South Korea",
    "New Zealand",
    "Indonesia",
    "Turkey",
    "Thailand",
    "Saudi Arabia",
  ];

  String selectedCountry = "India";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Center(
            child: UiHelper.CustomText(
              text: "Enter Your Phone number",
              height: 20,
              fontweight: FontWeight.bold,
              color: Color(0xff00a884),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: UiHelper.CustomText(
              text: "WhatsApp will need to verify your phone",
              height: 14,
            ),
          ),
          Center(
            child: UiHelper.CustomText(
              text: " number. Carrier charges may apply.",
              height: 14,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: UiHelper.CustomText(
              text: " What’s my number?",
              height: 16,
              color: Color(0xff00a884),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(right: 60, left: 60),
            child: DropdownButtonFormField(
              items:
                  countries.map((String country) {
                    return DropdownMenuItem(
                      child: Text(country.toString()),
                      value: country,
                    );
                  }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff00a884)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff00a884)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 30,
                child: TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    hintText: "+91",
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  controller: phoneControler,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          login(phoneControler.text.toString());
        },
        buttonname: "next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber.isEmpty) {
      return ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Enter the phpne number"),
      backgroundColor: Color(0xff00a884),));
    }
    else{
      Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpScreen(phoneNumber:phonenumber)));
    }
  }
}
