import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepsico_hackathon/view/quiz/controllers/question_controller.dart';
import 'package:pepsico_hackathon/view/quiz/models/Questions.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard(
    Key key,
    // it means we have to pass this
    @required this.question,
  ) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              UniqueKey(),
               question.options[index],
               index,
             () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
