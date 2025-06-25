import 'package:quiz_app/quiz_question.dart';

const questions = [
  QuizQuestion(
      "What is the building blocks of flutter?",
      [
        'widget',
        'component',
        'block',
        'function'
      ]
  ),
  QuizQuestion(
      "How flutter UI is being builds?",
      [
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android studio for Android'
      ]
  ),
  QuizQuestion(
      'What is the purpose of a StatefulWidget?',
      [
        'Update UI while data changed',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data'
      ]
  )
];