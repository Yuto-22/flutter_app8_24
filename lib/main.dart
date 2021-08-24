import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Container(
              child: Text(
                'Which of these is "coffee"?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ImageButtons(),
            SizedBox(height: 30,),
            ImageButton(),
            SizedBox(height: 20,),
            Container(
              width: 350,
              height: 50,
              child: ElevatedButton(
                child: Text('CHECK'),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageButtons extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
         child: Container(
           width: 150,
           child: Image.asset('assets/ミルク.png'),
           decoration: BoxDecoration(
             border: Border.all(color: Colors.grey),
             borderRadius: BorderRadius.circular(10),
           ),
         ),
        ),
        SizedBox(width: 30,),
        GestureDetector(
          child: Container(
            width: 140,
            child: Image.asset('assets/パン.png'),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

class ImageButton extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            width: 150,
            child: Image.asset('assets/ミズ.png'),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(width: 30,),
        GestureDetector(
          child: Container(
            height: 250,
            width: 150,
            child: Image.asset('assets/コーヒー.png'),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}