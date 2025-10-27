import 'package:flutter/material.dart';
import 'package:flutter_application_2/ass.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Setting(),
      appBar: AppBar(
        title: Text(
          "STORE",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(45),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.grey,
                        child: Image.asset(
                          "assets/images/shoes.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            "Nike SB Dunk Low",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "US 2500",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 270),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.grey,
                        child: Image.asset(
                          "assets/images/shoes2.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            "Nike air max new",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "US 3500",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(45),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.grey,
                        child: Image.asset(
                          "assets/images/shoes3.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            "Nike Sues Over",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "US 2500",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 270),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.grey,
                        child: Image.asset(
                          "assets/images/shoes4.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            "Nike Vomero Plus ",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "US 3500",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(45),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.grey,
                        child: Image.asset(
                          "assets/images/shoes6.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(" Nike - Jumia", style: TextStyle(fontSize: 25)),
                          Text(
                            "US 2500",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 270),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        color: Colors.grey,
                        child: Image.asset(
                          "assets/images/41720_4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text("Nike Mocha", style: TextStyle(fontSize: 25)),
                          Text(
                            "US 2500",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
