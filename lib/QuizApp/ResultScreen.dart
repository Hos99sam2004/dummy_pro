// import 'dart:math';

import 'package:dummy_pro/QuizApp/models/classes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({
    super.key,
    // ignore: non_constant_identifier_names
    required this.fun_choosed,
  });
  // ignore: non_constant_identifier_names
  final List<String> fun_choosed;
  getSummaryData() {
    // ignore: non_constant_identifier_names
    final List<Map<String, Object>> Summary = [];

    for (var i = 0; i < fun_choosed.length; i++) {
      Summary.add({
        'question_Index ': i,
        'question': Quistions[i].question,
        'correct_answer': Quistions[i].answer[0],
        'user_answer': fun_choosed[i],
      });
    }
    return Summary;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade800,
              Colors.purpleAccent,
            ],
            // begin: Alignment.topLeft,
            // begin: Alignment.bottomRight,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              " Quiz Result",
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...getSummaryData().map((e) => Column(
                  children: [
                    Text(
                      "   ${e['question'] as String}",
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Correct Answer:==>  ${e['correct_answer'] as String}",
                      style:
                          GoogleFonts.lato(color: Colors.yellow, fontSize: 20),
                    ),
                    Text(
                      e['user_answer'] as String,
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )),
            SizedBox(
                // height: 50,
                // width: 300,
                child: TextButton(
              onPressed: () {},
              child: Text(
                "=>> Go To result",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
