import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';
import 'package:whatsapp/Screens/HomeScreen/Calls/calls_screen.dart';
import 'package:whatsapp/Screens/HomeScreen/Camera/camera_screen.dart';
import 'package:whatsapp/Screens/HomeScreen/Chats/chats_screen.dart';
import 'package:whatsapp/Screens/HomeScreen/Status/status_screen.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var curenInd=0;

  var _listScreen=[
    ChatsScreen(),
    CallsScreen(),
    ChatsScreen(),
    CallsScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curenInd,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,

          type: BottomNavigationBarType.fixed,
          onTap: (index){
          setState(() {
            curenInd=index;
          });
          },
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
            BottomNavigationBarItem(icon: Icon(Icons.upcoming),label: "Updates"),
            BottomNavigationBarItem(icon: Icon(Icons.move_to_inbox_outlined),label: "Tools"),
          ]
      ),
      body: _listScreen[
        curenInd
      ],
    );
  }
}
