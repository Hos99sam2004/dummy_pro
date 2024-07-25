import 'package:dummy_pro/Pro1/auth_screen.dart';
import 'package:flutter/material.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => AuthScreen()),
            (Route<dynamic> route) => false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: 100,
            width: 300,
            child: Image.asset(
              "assets/images/logo2.png",
            ),
          ),
        ),
      ),
    );
  }
}
