class Quiz_quistions {
  final String question;

  final List<String> answer;

  Quiz_quistions({required this.question, required this.answer});
 
  }

  List<Quiz_quistions> Quistions = [
    Quiz_quistions(
      question: "What is Flutter?",
      answer: ["A framework", "A library", "Both are same", "None of the above"],
    ),
    Quiz_quistions(
      question: "What are the main building blocks of Flutter UIs?",
      answer: ['Widgets',
      'Components',
      'Blocks',
      'Functions',],
    ),
    Quiz_quistions(
      question: "How are Flutter UIs built?",
      answer: ['By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',],
    ),
    Quiz_quistions(
      question: "What\'s the purpose of a StatefulWidget?'",
      answer: ['Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',],
    ),
    Quiz_quistions(
      question: "Which widget should you try to use more often: StatelessWidget or StatefulWidget?",
      answer: ['StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',],
    ),
  ];