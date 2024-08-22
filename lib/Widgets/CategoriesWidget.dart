// ignore_for_file: unused_import, file_names, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final List<Map<String, dynamic>> allCategories = [
    {'name': 'Pizza', 'icon': Icons.local_pizza, 'count': 12},
    {'name': 'Burgers', 'icon': Icons.fastfood, 'count': 8},
    {'name': 'Sushi', 'icon': Icons.set_meal, 'count': 15},
    {'name': 'Desserts', 'icon': Icons.cake, 'count': 5},
    {'name': 'Salads', 'icon': Icons.emoji_food_beverage, 'count': 10},
    {'name': 'Pasta', 'icon': Icons.ramen_dining, 'count': 7},
    {'name': 'Beverages', 'icon': Icons.local_drink, 'count': 20},
    {'name': 'Seafood', 'icon': Icons.set_meal_outlined, 'count': 6},
    {'name': 'BBQ', 'icon': Icons.local_fire_department, 'count': 14},
  ];

   late List<Map<String, dynamic>> filteredCategories;

  @override
  void initState() {
    super.initState();
    filteredCategories = allCategories;
  }

  void filterCategories(String query) {
    final categories = allCategories.where((category) {
      final categoryName = category['name'].toLowerCase();
      final input = query.toLowerCase();

      return categoryName.contains(input);
    }).toList();

    setState(() {
      filteredCategories = categories;
    });
  }

  void sortCategories() {
    setState(() {
      filteredCategories.sort((a, b) => a['name'].compareTo(b['name']));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            onChanged: filterCategories,
            decoration: InputDecoration(
              labelText: 'Search Categories',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: Row(
              children: filteredCategories.map((category) {
                return GestureDetector(
                  onTap: () {
                    // Handle category selection
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Icon(
                                category['icon'],
                                size: 30,
                                color: Colors.orange,
                              ),
                            ),
                            if (category['count'] > 0)
                              Positioned(
                                right: 0,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red,
                                  child: Text(
                                    category['count'].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          category['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
