import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int shownQuestionIndex = 0;
  bool isFinalAnswerSubmitted = false;
  int correctAnswerNumber = 0;

  @override
  Widget build(BuildContext context) {
    String questionImageIndex =
        getQuestionList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.blue[800],
        title: Text(
            'سوال ${shownQuestionIndex + 1} از ${getQuestionList().length}'),
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
            ...List.generate(
              4,
              (index) => _getOptionItems(index),
            ),
            Visibility(
              visible: isFinalAnswerSubmitted,
              replacement: SizedBox(height: 52),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        correctAnswerNumber: correctAnswerNumber,
                      ),
                    ),
                  );
                },
                child: Text('مشاهده  کوئیز'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: Size(200, 50),
                  padding: EdgeInsets.all(0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getOptionItems(int index) {
    return ListTile(
      title: Text(
        getQuestionList()[shownQuestionIndex].answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        print(index);
        if (getQuestionList()[shownQuestionIndex].correctAnswer == index) {
          correctAnswerNumber++;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionList().length - 1) {
            shownQuestionIndex++;
          } else {
            isFinalAnswerSubmitted = true;
          }
        });
        ;
      },
    );
  }
}
