// import 'dart:async';

// import 'package:dummy_pro/Pro1/auth_screen.dart';
import 'package:dummy_pro/Pro1/Ecom2.dart';
import 'package:flutter/material.dart';

bool isActive = true;

class Pro1_Ecommerce_App extends StatefulWidget {
  // final bool? secondSplash;
  const Pro1_Ecommerce_App({super.key});

  @override
  State<Pro1_Ecommerce_App> createState() => _Pro1_Ecommerce_AppState();
}

class _Pro1_Ecommerce_AppState extends State<Pro1_Ecommerce_App> {
  // Timer? timer;
  // @override
  // void initState() {
  //   const oneSec = Duration(milliseconds: 500);
  //   if (isActive) {
  //     timer = Timer.periodic(oneSec, (Timer t) {
  //       Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => Pro1_Ecommerce_App(
  //                     secondSplash: !widget.secondSplash!,
  //                   )),
  //           (Route<dynamic> route) => false);
  //     });
  //   }
  //   isActive = false;
  //   if (!isActive) {
  //     timer!.cancel();
  //     Future.delayed(const Duration(seconds: 5))
  //         .then((v) => Navigator.pushAndRemoveUntil(
  //               context,
  //               MaterialPageRoute(builder: (context) => AuthScreen()),
  //               (Route<dynamic> route) => false,
  //             ));
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Screen_2()),
            (Route<dynamic> route) => false);
      },
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            height: 100,
            width: 250,
            child: Image.asset(
              "assets/images/logo1.png",
            ),
          ),
        ),
      ),
    );
  }
}
