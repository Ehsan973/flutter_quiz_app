import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            Image.asset('images/welcome.png'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(),
                  ),
                );
              },
              child: Text('شروع بازی'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigo[700],
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Dana',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
