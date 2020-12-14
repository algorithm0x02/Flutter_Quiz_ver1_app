import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/model/model_quiz.dart';
import 'package:quiz_app/screen/screen_quiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Quiz> quizs = [
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
    Quiz.fromMap({
      'title': 'test',
      'candidates': ['a', 'b', 'c', 'd'],
      'answer': 0
    })
  ];


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: Text('My'),
        backgroundColor: Colors.redAccent,
        leading: Container(),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.network(
                'https://picsum.photos/250?image=9',
                width: width*0.8),
            ),
            Padding(
                padding: EdgeInsets.all(width*0.024),
            ),
            Text(
                '퀴즈 1',
            style: TextStyle(
              fontSize: width * 0.065,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              '안내 사항입니다. \n먼저 읽어주세요',
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(width * 0.048),
            ),
            _buildStep(width, '1. 문제를 잘 읽고 질문에 답하세'),
            _buildStep(width, '2. MBTI퀴즈로 이루어져 있으며 3문제 입니'),
            _buildStep(width, '3. 제한 시간은 없습니다'),
            Padding(padding: EdgeInsets.all(width * 0.048),
            ),
            Container(padding: EdgeInsets.only(bottom: width * 0.036),
              child: ButtonTheme(
                minWidth: width * 0.8,
                height: height * 0.05,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
                ),
                child: RaisedButton(child: Text('지금 실행',
                  style: TextStyle(color:  Colors.white),
                ),
                  color: Colors.redAccent,
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizScreen(quizs: quizs),
                  ),
                  );
                  },
                ),
              ),
            ),
          ],
        ),
    ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          width * 0.048, width * 0.024, width * 0.048, width * 0.024),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.check_box, size: width * 0.04),
        Padding(padding: EdgeInsets.only(right: width * 0.024),
        ),
        Text(title),
      ],
      ),
    );
  }
}


//TESTTESTTESTTESTTESTTEST
