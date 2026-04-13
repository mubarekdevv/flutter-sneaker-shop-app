import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            Padding(
              //logo
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                'assets/images/nikelogo.png',
                height: 240,
              ),
            ),
            //title
            Text('Just do it!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            
          ],
        ),
      ),
    );
  }
}