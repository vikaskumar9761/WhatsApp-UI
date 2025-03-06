import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'dart:io';
import 'package:whatsapp/Screens/HomeScreen/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController namecontroler = TextEditingController();
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            UiHelper.CustomText(
              text: "Profile info",
              height: 20,
              color: Color(0xff00a884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 40),
            UiHelper.CustomText(
              text: "Please provide your name and an optional",
              height: 14,
            ),
            UiHelper.CustomText(text: "profile photo", height: 14),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                _openBotton(context);
              },
              child:pickedImage==null?CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffd9d9d9),
                child: Image.asset(
                  "assets/images/photo-camera 1.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ):
              CircleAvatar(
                radius: 50,
                backgroundImage:(FileImage(pickedImage!)),
              ),
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: namecontroler,
                    decoration: InputDecoration(
                      hintText: " Type your name here",
                      hintStyle: TextStyle(color: Color(0xff5e5e5e)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00a884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00a884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00a884)),
                      ),
                    ),
                  ),
                ),
                Image.asset("assets/images/happh.png"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        buttonname: "next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBotton(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(
                      Icons.camera_alt,
                      size: 50,
                      color: Color(0xff00a884),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 50, color: Color(0xff00a884)),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;

      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ex.toString()), backgroundColor: Colors.red),
      );
    }
  }
}
