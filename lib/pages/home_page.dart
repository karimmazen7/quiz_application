// stl

import 'package:flutter/material.dart';
//import 'package:quiz_application/models/answer_item_model.dart';
import 'package:quiz_application/models/question_item_model.dart';
import 'package:quiz_application/widgets/answer_item.dart';
import 'package:quiz_application/widgets/question_item.dart';
import 'package:quiz_application/widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  // constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int myTotalScore = 0;
  int answerChoosen = -1;
  int resultScore = questions.length * 10;
  bool isQuizCompleted = false;
  // build wedget method on screen
  @override
  Widget build(BuildContext context) {
    isQuizCompleted = myTotalScore >= resultScore;
    // list but this is not good to do in large projects so we need to create a model class like forget title with name
    // List<Map<String, dynamic>> answersFirstQuestion = [
    //   {
    //     'title': 'Football',
    //     'onPressed': () {
    //       debugPrint('Football button clicked');
    //     },
    //   },
    //   {
    //     'title': 'Basketball',
    //     'onPressed': () {
    //       debugPrint('Basketball button clicked');
    //     },
    //   },
    //   {
    //     'title': 'Tennis',
    //     'onPressed': () {
    //       debugPrint('Tennis button clicked');
    //     },
    //   },
    //   {
    //     'title': 'kickboxing',
    //     'onPressed': () {
    //       debugPrint('kickboxing button clicked');
    //     },
    //   },
    // ];
    // debugPrint('Total Score: $myTotalScore');
    return Scaffold(
      // appBar: AppBar(title: const Text('Quiz App')),
      body: SafeArea(
        child: !isQuizCompleted
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      QuestionItem(questionItem: questions[questionIndex]),
                      const SizedBox(height: 30),
                      Column(
                        // children: questions[questionIndex].availableAnswers
                        //     .map(
                        //       (answerMap) => AnswerItem(
                        //         answerMap: answerMap,

                        //         questionIndexChangeCallback: () {},
                        //       ),
                        //     )
                        //     .toList(),
                        children: List.generate(
                          questions[questionIndex].availableAnswers.length,
                          (index) => AnswerItem(
                            answerMap: questions[questionIndex]
                                .availableAnswers[index],
                            isAnswerSelected: answerChoosen == index,
                            questionIndexChangeCallback: () {
                              setState(() {
                                answerChoosen = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (questionIndex + 1 < questions.length) {
                              setState(() {
                                questionIndex += 1;
                              });
                            }
                            setState(() {
                              myTotalScore += 10;
                              answerChoosen = -1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black, // button color
                            foregroundColor: Colors.white, // text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                12,
                              ), // rounded corners
                            ),
                          ),
                          child: const Text('Next'),
                        ),
                        // Padding(
                        //   // like EdgeInsets.only(top: 8.0, bottom: 8.0)
                        //   padding: const EdgeInsets.symmetric(vertical: 8),
                        //   child: SizedBox(
                        //     height: 60,
                        //     width: double.infinity,
                        //     child: ElevatedButton(
                        //       onPressed: () {
                        //         // Navigate to the quiz page
                        //       },
                        //       child: Text('Football'),
                        //     ),
                        //   ),
                        // ),
                        // Padding(

                        //   padding: const EdgeInsets.symmetric(vertical: 8),
                        //   child: SizedBox(
                        //     height: 60,
                        //     width: double.infinity,
                        //     child: ElevatedButton(
                        //       onPressed: () {
                        //         // Navigate to the quiz page
                        //       },
                        //       child: Text('Basketball'),
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 8),
                        //   child: SizedBox(
                        //     height: 60,
                        //     width: double.infinity,
                        //     child: ElevatedButton(
                        //       onPressed: () {
                        //         // Navigate to the quiz page
                        //       },
                        //       child: Text('Tennis'),
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 8),
                        //   child: SizedBox(
                        //     height: 40,
                        //     width: double.infinity,
                        //     child: ElevatedButton(
                        //       onPressed: () {
                        //         // Navigate to the quiz page
                        //         debugPrint('kickboxing button clicked');
                        //       },
                        //       child: Text('kickboxing'),
                        //     ),
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
                // if total score is >= result score then show congratulations (condition is true)
              )
            : TotalScorePart(
                myTotalScore: myTotalScore,
                restQuizOnPressed: () {
                  setState(() {
                    questionIndex = 0;
                    myTotalScore = 0;
                  });
                },
              ),
      ),
    );
  }
}
