import 'package:flutter/material.dart';

class SingleProduct extends StatefulWidget {
  const SingleProduct({super.key});

  @override
  State<SingleProduct> createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<String> Quantity = ['2', '4', '6', '2'];

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            ClipPath(
              child: Container(
                height: size.height * 0.7,
                width: size.width * 1,
                color: Colors.grey[300],
                child: Image.asset(
                  'assets/ginger.png',
                ),
              ),
              clipper: MyClipper(),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset('assets/back_icon.png'),
                ),
                SizedBox(
                  width: size.width * 0.6,
                ),
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                  child: Image.asset('assets/search_icon.png'),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                      height: size.height * 0.05,
                      width: size.width * 0.5,
                      child: Text(
                        'Arabic Ginger',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      height: size.height * 0.03,
                      width: size.width * 0.3,
                      child: Text(
                        '1kg, 4 \$',
                        style: TextStyle(color: Colors.pink[400], fontSize: 20),
                      )),
                ],
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height * 0.5) // Starting point
      ..quadraticBezierTo(
          size.width * 0.5, size.height, size.width, size.height * 0.5)
      ..lineTo(size.width, 0) // Line to top-right corner
      ..lineTo(0, 0) // Line to top-left corner
      ..close(); // Close the path to form a closed shape

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
