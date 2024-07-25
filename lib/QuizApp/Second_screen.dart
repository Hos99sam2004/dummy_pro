import 'dart:developer';

import 'package:dummy_pro/QuizApp/ResultScreen.dart';
import 'package:dummy_pro/QuizApp/models/classes.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> choosedAnswer = [];

  void onSelectedAnswer(String answer) {
    choosedAnswer.add(answer);
    if (Quistions.length == (choosedAnswer.length)) {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Resultscreen(
                      fun_choosed: choosedAnswer,
                    )));
        // choosedAnswer = [];
      });
    }
    log(choosedAnswer.toString());
  }

  var indexCount = 0;
  void _nextQuestion(String answer) {
    onSelectedAnswer(answer);
    setState(() {
      indexCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQustions = Quistions[indexCount];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.backspace_outlined),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade800,
              Colors.purpleAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "  Flutter Quiz App",
                style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                currentQustions.question,
                style: GoogleFonts.lato(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 40.0),
              ...currentQustions.answer.map((e) => Container(
                    margin: EdgeInsets.all(5),
                    child: OutlinedButton(
                      onPressed: () => _nextQuestion(e),
                      child: Text(
                        e,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.kalnia(
                            color: Colors.white, fontSize: 25),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
