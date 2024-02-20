import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
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
                decoration:BoxDecoration(color:Colors.white),
                child: Text('hai                                           ')),
            SizedBox(
              width: 20,
              height: 400,
            ),
            Container(
                padding: EdgeInsets.all(20),
                width: 600,
                height: 100,
                child: TextButton(
                    onPressed: null,
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
                  onPressed: null,
                  child: Text('no'),
                  style: TextButton.styleFrom(backgroundColor: Colors.teal),
                )),
         Container(padding: EdgeInsets.all(20),
           width: 100,
           height: 60,
           decoration: BoxDecoration(color: Colors.teal),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.close_sharp,color: Colors.cyan,)
             ],
           ),
         ) ],
        ),

      ),
    );
  }
}
