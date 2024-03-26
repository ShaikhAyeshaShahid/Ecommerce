import 'package:ecommerce/Cart.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/SingleProduct.dart';

class GridView_display extends StatefulWidget {
  const GridView_display({super.key});

  @override
  State<GridView_display> createState() => _GridView_displayState();
}

class _GridView_displayState extends State<GridView_display> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: size.height * 0.002,
        crossAxisSpacing: size.width * 0.02,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingleProduct()),
                );
              },
              child: Container(
                height: size.height * 0.2,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[300]),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/meat.png',
                      height: size.height * 0.13,
                      width: size.width * 0.3,
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      textAlign: TextAlign.end,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(fontSize: 15, color: Colors.pink),
                          textAlign: TextAlign.end,
                        ),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        Icon(
                          Icons.add_circle_rounded,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
