import 'package:delimeals/model/meal.dart';
import 'package:delimeals/screens/Favorites_screen.dart';
import 'package:delimeals/screens/categories_screen.dart';
import 'package:delimeals/widgets/main_drwawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {


  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget>page=[
    CategoriesScreen(),
    Fav_screen()
  ];
 int select_page_index=0;
  void seelctpage(int index){
   setState(() {
     select_page_index=index;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Maindrwaer(),        appBar: AppBar(
          title: Text("Meals"),
        ),
        body: page[select_page_index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
        currentIndex: select_page_index,
         // type: BottomNavigationBarType.shifting,
          onTap:seelctpage ,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: "Favorites",
            ),
          ],
        ));
  }
}
