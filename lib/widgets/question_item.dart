import 'package:flutter/material.dart';
import 'package:quiz_application/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
 final QuestionItemModel questionItem;
  const QuestionItem({super.key , required this.questionItem});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionItem.title,
            style: Theme.of(context).textTheme.headlineLarge
            !.copyWith(color: Colors.black),
          ),
          const SizedBox(height: 12),
            Text(
            'Answer and get points',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
