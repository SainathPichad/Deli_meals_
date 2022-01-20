import 'package:delimeals/widgets/category_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView(

          padding: const EdgeInsets.all(25),
          //padding: EdgeInsets.only(top :10,bottom:10,left: 10,right: 10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES.map((catData) =>
          CategoryItem(catData.title, catData.color,catData.id)

          ).toList()


        );


  }
}
