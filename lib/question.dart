import 'package:flutter/material.dart';
import 'package:quiz/questionlist.dart';
import '';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int i = 0;
  String result='';
  void next() {
    if (i < question.length) {
      i++;
    }
  }

  void check(bool answer) {
    if (answer == question[i].ans) {
      result='correct';
    } else {
      result='wrong';
    }
    ;
  }

  List question = [
    Quiz(qus: 'Sharks are mammals', ans: false),
    Quiz(
        qus: 'Sea otters have a favorite rock they use to break open food.',
        ans: true),
    Quiz(qus: 'Bats are blind', ans: false),
    Quiz(qus: 'An ant can lift 1,000 times its body weight', ans: false),
    Quiz(
        qus:
            'When exiting a cave, bats always go in the direction of the wind ',
        ans: false),
    Quiz(qus: 'Galapagos tortoises sleep up to 16 hours a day', ans: true),
    Quiz(qus: 'The goat is the national animal of Scotland.', ans: false),
    Quiz(qus: 'Herbivores are animal eaters', ans: false),
    Quiz(qus: 'A monkey was the first non-human to go into space', ans: false),
    Quiz(
        qus:
            'When exiting a cave, bats always go in the direction of the wind.',
        ans: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
              height: 200,
            ),
            Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Text(question[i].qus)),
            SizedBox(
              width: 20,
              height: 200,
            ),
            Container(
                padding: EdgeInsets.all(20),
                width: 600,
                height: 100,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        check(true);
                        next();

                      });
                    },
                    child: Text('yes'),
                    style: TextButton.styleFrom(backgroundColor: Colors.teal))),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Container(
                padding: EdgeInsets.all(20),
                width: 600,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      check(false);
                      next();

                    });
                  },
                  child: Text('no'),
                  style: TextButton.styleFrom(backgroundColor: Colors.teal),

                ) ),
            Container(
              padding: EdgeInsets.all(20),
              width: 100,
              height: 60,
              decoration: BoxDecoration(color: Colors.teal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.close_sharp,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Text(result,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
