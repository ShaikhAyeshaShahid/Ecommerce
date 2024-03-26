import 'package:ecommerce/widget/Cart_List.dart';
import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: size.height * 0.05,
              // width: size.width * 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  // height: size.height * 0.1,
                  width: size.width * 0.3,
                ),
                Container(
                  child: Text(
                    'Cart',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // Container(
                //   child: Icon(
                //     Icons.search,
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
            Expanded(child: const cartlist()),
            Container(
              width: size.width * 1,
                child: ElevatedButton(
                    onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.green),
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          ),
                    )))
          ],
        ),
      ),
    );
  }
}
