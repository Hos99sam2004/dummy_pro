
// import 'package:dummy_pro/QuizApp/First_Screen.dart';
import 'package:dummy_pro/Testat/DataBaseApp/Hive.dart';
import 'package:dummy_pro/Testat/DataBaseApp/Note_app.dart';
// import 'package:dummy_pro/Testat/Ecommerce_Screen/Ecommerce_Screen.dart';
// import 'package:dummy_pro/Testat/LoginScreen.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
      await Hive.initFlutter();
      var box = await Hive.openBox(HiveHelpers.notesBox);
      await HiveHelpers.getAllNotes();
      runApp(const E_commerce_App());
}

class E_commerce_App extends StatelessWidget {
  const E_commerce_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoteAppScreen(),
    );
  }
}
