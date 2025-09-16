import 'package:flutter/material.dart';
import 'package:quiz_application/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answerMap;
  final VoidCallback questionIndexChangeCallback;
  final bool isAnswerSelected;
  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.questionIndexChangeCallback,
    required this.isAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // like EdgeInsets.only(top: 8.0, bottom: 8.0)
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: InkWell(
          onTap: () {
            answerMap.onPressed();
            questionIndexChangeCallback();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(8),
              color: isAnswerSelected ? Colors.green : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(Icons.add,
                   size: 24,
                   color: isAnswerSelected ? Colors.white : Colors.black,
                   ),
                  const SizedBox(width: 10),
                  Text(
                    answerMap.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isAnswerSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // child: ElevatedButton(
        //   // if you want to use model
        //   onPressed: (){
        //     answerMap.onPressed();
        //     questionIndexChangeCallback();
        //   },
        //   // if you want to use map
        //   // onPressed: answerMap['onPressed'],
        //   //Text(answerMap['title']),
        //   child: Text(answerMap.title),
        // ),
      ),
    );
  }
}
