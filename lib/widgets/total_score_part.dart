import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  final int myTotalScore;
  final VoidCallback restQuizOnPressed;
  const TotalScorePart({super.key, required this.myTotalScore, required this.restQuizOnPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text(
                    'Congratulations!',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Your total score is $myTotalScore ',
                    style: const TextStyle(fontSize: 18),
                  ),
                  TextButton(
                
                    onPressed: restQuizOnPressed,
                    child:  Text('Restart Quiz',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.green)),
                  ),
                ],
              ),
            );
  }
}