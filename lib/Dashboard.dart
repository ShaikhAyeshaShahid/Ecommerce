import 'package:ecommerce/Cart.dart';
import 'package:ecommerce/Vegetables.dart';
import 'package:ecommerce/widget/AutoImageSlider.dart';
import 'package:ecommerce/widget/Dropdown.dart';
import 'package:ecommerce/widget/GridView.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List<String> Options = ["My Flat", "Option 1", "Option 2"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.2,
                    child: Image.asset('assets/user.png'),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width * 0.25,
                        height: size.height * 0.02,
                        child: Text('Good Morning'),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        width: size.width * 0.3,
                        height: size.height * 0.03,
                        child: Text(
                          'Amelia Barlow',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        Dropdown(Options),
                      ],
                    ),
                  )
                ],
              ),
              Card(
                elevation: 4,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                  width: size.width * 1,
                  height: size.height * 0.2,
                  child: AutoImageSlider()),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                  Container(
                      child: Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.end,
                  ))
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // height: size.height * 0.1,
                        // width: size.width * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300]),
                        child: Image.asset(
                          'assets/fruits.png',
                          height: size.height * 0.06,
                          width: size.width * 0.15,
                        ),
                      ),
                      // Icon(Icons.apple, color: Colors.red,),
                      Text('Fruits')
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    children: [
                      // Icon(
                      //   Icons.apple,
                      //   color: Colors.red,
                      // ),
                      InkWell(
                        onTap: () async {
                          await Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Vegetable()), // Replace with your HomeScreen
                          );
                        },
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Vegetable()),);
                          },
                          child: Container(
                            // height: size.height * 0.1,
                            // width: size.width * 0.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[300]),
                            child: Image.asset(
                              'assets/vegetables.png',
                              height: size.height * 0.06,
                              width: size.width * 0.15,
                            ),
                          ),
                        ),
                      ),
                      Text('Vegetables')
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    children: [
                      Container(
                        // height: size.height * 0.1,
                        // width: size.width * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300]),
                        child: Image.asset(
                          'assets/diary.png',
                          height: size.height * 0.06,
                          width: size.width * 0.15,
                        ),
                      ),
                      Text('Dairy')
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    children: [
                      Container(
                        // height: size.height * 0.1,
                        // width: size.width * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300]),
                        child: Image.asset(
                          'assets/meat.png',
                          height: size.height * 0.06,
                          width: size.width * 0.15,
                        ),
                      ),
                      Text('Meat')
                    ],
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Text(
                    'Best selling',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                  Container(
                      child: Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.end,
                  ))
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => cart()),);
        },
        child: Icon(
          Icons.shopping_basket,
          color: Colors.green,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          // color: Colors.blue,
          // height: size.height * 0.05, // Adjust this height as needed
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Buttom_Navigation(),

              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                onPressed: () {
                  // Navigate to home screen
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.green,
                ),
                onPressed: () {
                  // Navigate to settings screen
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.event_note,
                  color: Colors.green,
                ),
                onPressed: () {
                  // Navigate to home screen
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                onPressed: () {
                  // Navigate to settings screen
                },
              ),
            ],
          ),
        ),
      ),
      // Buttom_Navigation(
      //     // shape : CircularNotchedRectangle(),
      //     // notchMargin:4.0,
      //     // Row(
      //     //   children: [
      //     //
      //     //   ],
      //     // ),
      //     ),
    );
  }
}
