import 'dart:convert';

import 'package:flutter/material.dart';
class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Column(
        children: [
          Text('Terms and condition', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),)
        ],
      ),
    ));
  }
}
