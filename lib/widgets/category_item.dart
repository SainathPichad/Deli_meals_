import 'package:delimeals/screens/category_meals_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoryItem(this.title, this.color,this.id);


  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return CategoryMealsScreen(categoryID: id, cat_title: title) ;
    }));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap:()=> selectCategory(context),
      //splashColor: Colors.pink,
      //borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(fontSize: 24, fontFamily: 'Roboto',
          fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
