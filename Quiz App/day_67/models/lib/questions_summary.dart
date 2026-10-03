import 'package:flutter/material.dart';
import 'package:adding_data_model_and_dummy_data/question_screen.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final questionNumber =
                (data['question_index'] as int) + 1;

            final question = data['question'] as String;
            final userAnswer = data['user_answer'] as String;
            final correctAnswer = data['correct_answer'] as String;

            final isCorrect = userAnswer == correctAnswer;

            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Question Number
                  SizedBox(
                      width: 32,
                      child: Text(
                          '$questionNumber',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none
                          ),
                        ),
                      ),
                  const SizedBox(width: 12),

                  // Question + Answers
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          question,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // User Answer
                        Text(
                          'User answer: $userAnswer',
                          style: TextStyle(
                            color: isCorrect
                                ? Colors.black
                                : Colors.black,
                            fontSize: 15,
                            decoration: TextDecoration.none,
                          ),
                        ),

                        const SizedBox(height: 5),

                        // Correct Answer
                        Text(
                          'Correct answer: $correctAnswer',
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}