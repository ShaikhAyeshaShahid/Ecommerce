import 'package:ecommerce/TermsConditions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/Dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // Ensure vertical alignment is top-aligned
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                    height: size.height * 0.1,
                    width: size.width * 0.1,
                    child: Image.asset('assets/back_icon.png')),
              ),
              SizedBox(
                  height: size.height * 0.1,
                  width: size.width * 0.15,
                  child: Image.asset('assets/app_logo.png')),
              Text(
                'Enter your mobile number',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'We will send you a verification code',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: size.height * 0.125,
                  // ),
                  Container(
                    // width: size.width * 0.2,
                    // height: size.height * 0.1,
                    child: Text(
                      '+44',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.5,
                    // height: size.height *0.1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '(000) 000-00-00',
                          hintStyle:
                              TextStyle(fontSize: 26, color: Colors.grey),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.07,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Column(
                children: [
                  Text('By clicking on "Continue" you are agreeing',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                      textAlign: TextAlign.center),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('to our',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                          textAlign: TextAlign.center),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (TermsConditions())),
                            );
                          },
                          child: Text('terms of use',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.purple[900],
                                  decoration: TextDecoration.underline),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
