import 'package:adding_data_model_and_dummy_data/quiz_question.dart';
import 'package:flutter/cupertino.dart';

const questions = [
  QuizQuestion('What are the building blocks of Flutter UIs?',
      [
        'Widgets',
    'Components',
    'Blocks',
    'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?',
[
  'By combining widgets in code',
   'By combining widgets in a visual editor',
   'By defining widgets in config files',
   'By using Xcode for iOS and Android Studio for Android '
]),
  QuizQuestion(
      'What is the purpose of statefulwidget?',
  [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data ',
  ]),
];