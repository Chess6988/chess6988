// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row( // Wrap multiple items inside a Row
        children: [
          // First Item
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
            child: Container(
              width: 175,
              height: 247,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
               
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/burger.jpg",
                        height: 130,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Hot Burger",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Taste our latest burger",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(), // Pushes the row to the bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$10",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26, // Slightly larger icon size for better visual balance
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Small padding to avoid tight spacing at the bottom
                  ],
                ),
              ),
            ),
          ),
          
          // Second Item
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 175,
              height: 249,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
               
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/efef.jpg",
                        height: 120,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Hot Pizza",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Taste our Nice Pizza",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(), // Pushes the row to the bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$15",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26, // Slightly larger icon size for better visual balance
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Small padding to avoid tight spacing at the bottom
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 175,
              height: 249,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
          
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/juice.jpg",
                        height: 120,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Nice smooothie",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Taste our latest delicious juice",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(), // Pushes the row to the bottom
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$5",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26, // Slightly larger icon size for better visual balance
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Small padding to avoid tight spacing at the bottom
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
