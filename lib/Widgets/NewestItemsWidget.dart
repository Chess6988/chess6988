// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class NewestItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(children: [InkWell(onTap: () {},
                child: Container(alignment: Alignment.center,
                child: Image.asset( "images/efef.jpg", height: 120, width: 150),
                ),
                ),
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Hot Pizza", style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold,
                      ),
                      ),
                       Text("Taste Our Hot Pizza, We Provide Our Foods", style: TextStyle(
                        fontSize: 16, 
                      ),
                      ),
                      RatingBar.builder(initialRating: 4, minRating: 1, direction: Axis.horizontal, itemCount: 5, itemSize: 18, itemPadding: EdgeInsets.symmetric(horizontal: 4), itemBuilder: (context, _) => Icon(Icons.star,
    color: Colors.red,), onRatingUpdate: (index) {} ),
                    ],
                  ),
                ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
