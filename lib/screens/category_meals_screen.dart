import 'package:delimeals/meal_item.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';



class CategoryMealsScreen extends StatelessWidget {
  final String categoryID;
  final String cat_title;
  CategoryMealsScreen({required this.categoryID, required this.cat_title});

  @override
  Widget build(BuildContext context) {
    final catrgorymeals=DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(cat_title),
        backgroundColor: Colors.pink,
      ),
      body:ListView.builder(itemBuilder: (context,index){
          return  MealItem(title: catrgorymeals[index].title, imgaeurl: catrgorymeals[index].imageUrl, duration: catrgorymeals[index].duration, complexity: catrgorymeals[index].complexity, affordability: catrgorymeals[index].affordability, id: catrgorymeals[index].id,);
      },
        itemCount: catrgorymeals.length,
      )
    );
  }
}
