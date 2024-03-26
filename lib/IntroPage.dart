import 'package:ecommerce/Login.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Container(
                height: size.height * 0.95,
                width: size.width * 1,
                child: Image.asset(
                  'assets/welcome_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/app_logo.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Container(
                      child: Text(
                        'Get your groceries delivered to your home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 36),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Text(
                          'The best delivery app in town for delivering your daily fresh groceries',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey[400]),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      width: size.width * 0.5,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text(
                            'Shop now',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
