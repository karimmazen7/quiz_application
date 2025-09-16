import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;

  AnswerItemModel({required this.title, required this.onPressed});
}

// using model class for answer item first question
// this is good for large projects because we can easily manage the data api and databases
List<AnswerItemModel> answersFirstQuestion = [
  AnswerItemModel(
    title: 'Football',
    onPressed: () {
      debugPrint('Football button clicked');
    },
  ),
  AnswerItemModel(
    title: 'Basketball',
    onPressed: () {
      debugPrint('Basketball button clicked');
    },
  ),
  AnswerItemModel(
    title: 'Tennis',
    onPressed: () {
      debugPrint('Tennis button clicked');
    },
  ),
  AnswerItemModel(
    title: 'kickboxing',
    onPressed: () {
      debugPrint('kickboxing button clicked');
    },
  ),
];
