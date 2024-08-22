// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/PopularItemsWidget.dart';
import '../Widgets/NewestItemsWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom app bar widget
          AppBarWidget(),

          // Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "What would you like to have..... ",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight:
                   FontWeight.bold, 
                  fontSize: 20),
                ),
                ),
                CategoriesWidget(),
                Padding(padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ), 

                PopularItemsWidget(),

//Newest Items
Padding(padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Newest",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                ),
              //Newest Item Widget
              NewestItemsWidget()  
        ],
      ),
    );
  }
}
