import 'package:quiz_app/data/question.dart';

List<Question> getQuestionList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageNameNumber = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  return [firstQuestion, secondQuestion];
}
