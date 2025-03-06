import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Splash/splash.dart';
import 'package:whatsapp/Screens/HomeScreen/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00a884),),
        fontFamily: "Regular"
      ),
      home: SplashScreen(),
    );
  }
}
