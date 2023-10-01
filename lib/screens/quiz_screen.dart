import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/data/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int shownQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    String questionImageIndex =
        getQuestionList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.blue[800],
        title: Text('کوئیز کویین'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Image.asset(
              'images/${questionImageIndex}.png',
              height: 300,
            ),
            Text(
              getQuestionList()[shownQuestionIndex].questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'پاسخ اول',
                textAlign: TextAlign.end,
              ),
              onTap: () {
                setState(() {
                  shownQuestionIndex = 1;
                });
              },
            ),
            ListTile(
              title: Text(
                'پاسخ دوم',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ سوم',
                textAlign: TextAlign.end,
              ),
            ),
            ListTile(
              title: Text(
                'پاسخ چهارم',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
