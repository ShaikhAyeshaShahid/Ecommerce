import 'package:flutter/material.dart';

class cartlist extends StatelessWidget {
  const cartlist({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Bell Pepper Red',
      'Butternut Squash',
      'Arabic Ginger',
      'Organic Carrots'
    ];
    final List<String> imageAssets = [
      'assets/pepper_red.png',
      'assets/butternut.png',
      'assets/ginger.png',
      'assets/carrots.png',
    ];
    final List<String> prices = ['6\$', '8\$', '4\$', '4\$'];
    final List<String> Quantity = ['2', '4', '6', '2'];

    Size size = MediaQuery.of(context).size;

    return ListView.separated(
        itemBuilder: (BuildContext contexts, int index) {
          return Container(
            // height: size.height * 1,
            width: size.width * 1,
            // color: Colors.amber[colorCodes[index]],
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                Container(
                    height: size.height * 0.1,
                    width: size.width * 0.1,
                    child: Image.asset(imageAssets[index])),
                SizedBox(
                  width: size.width * 0.1,
                ),
                Column(
                  children: [
                    Container(
                        height: size.height * 0.03,
                        width: size.width * 0.4,
                        child: Text(
                          entries[index],
                          style: TextStyle(fontSize: 15),
                        )),
                    Row(
                      children: [
                        Container(
                            height: size.height * 0.03,
                            width: size.width * 0.1,
                            child: Text(
                              '1Kg',
                              style: TextStyle(
                                  color: Colors.pink[400], fontSize: 15),
                            )),
                        Container(
                            height: size.height * 0.03,
                            width: size.width * 0.1,
                            child: Text(
                              prices[index],
                              style: TextStyle(
                                  color: Colors.pink[400], fontSize: 15),
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Container(
                    height: size.height * 0.08,
                    width: size.width * 0.08,
                    child: Image.asset('assets/remove_icon.png')
                    // Icon(Icons.remove_circle),
                    ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                    // height: size.height * 0.1,
                    width: size.width * 0.03,
                    child: Text(
                      Quantity[index],
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                    height: size.height * 0.08,
                    width: size.width * 0.08,
                    child: Image.asset('assets/add_icon.png')),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: imageAssets.length);
  }
}
