import 'package:flutter/material.dart';
import 'package:quiz_application/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;
  QuestionItemModel({required this.title, required this.availableAnswers});
}

List <QuestionItemModel> questions = [
  QuestionItemModel(
    title: 'What is your favorite sport?',
    availableAnswers: [
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
  ),]),
  QuestionItemModel(
    title: 'What is your favorite color?',
    availableAnswers:[
      AnswerItemModel(
        title: 'Red',
        onPressed: () {
          debugPrint('Red button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Blue',
        onPressed: () {
          debugPrint('Blue button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Green',
        onPressed: () {
          debugPrint('Green button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Yellow',
        onPressed: () {
          debugPrint('Yellow button clicked');
        },
      ),
    ]),
  QuestionItemModel(
    title: 'What is your favorite food?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Pizza',
        onPressed: () {
          debugPrint('Pizza button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Burger',
        onPressed: () {
          debugPrint('Burger button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Pasta',
        onPressed: () {
          debugPrint('Pasta button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Sushi',
        onPressed: () {
          debugPrint('Sushi button clicked');
        },
      ),
    ],
  ),
  QuestionItemModel(
    title: 'What is your favorite movie?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Inception',
        onPressed: () {
          debugPrint('Inception button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Interstellar',
        onPressed: () {
          debugPrint('Interstellar button clicked');
        },
      ),
      AnswerItemModel(
        title: 'The Dark Knight',
        onPressed: () {
          debugPrint('The Dark Knight button clicked');
        },
      ),
      AnswerItemModel(
        title: 'Pulp Fiction',
        onPressed: () {
          debugPrint('Pulp Fiction button clicked');
        },
      ),
    ],
  ),
];