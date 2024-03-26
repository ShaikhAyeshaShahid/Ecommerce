import 'package:ecommerce/widget/GridView.dart';
import 'package:flutter/material.dart';

class Vegetable extends StatefulWidget {
  const Vegetable({super.key});

  @override
  State<Vegetable> createState() => _VegetableState();
}

class _VegetableState extends State<Vegetable> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
                // width: size.width * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text('Vegetable'),
                  ),
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                  height: size.height * 1,
                  width: size.width * 1,
                  child: const GridView_display()),
            ],
          ),
        ),
      ),
    );
  }
}
