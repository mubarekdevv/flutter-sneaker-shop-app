import 'package:ecommerce_app_ui/pages/home_page.dart';
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
            //sub title
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Brand new sneakers and custom kicks made wit premium quality',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //start now button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                },));
              },
              child: Text(
                'Shop now',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  minimumSize: Size(440, 70),
                  elevation: 20,
                  shadowColor: Colors.grey,
                  // side: BorderSide(color: Colors.black, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            )
          ],
        ),
      ),
    );
  }
}