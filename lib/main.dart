import 'package:delimeals/screens/categories_screen.dart';
import 'package:delimeals/screens/category_meals_screen.dart';
import 'package:delimeals/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

import 'model/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  List<Meal>fav_meals=[];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color(0xffF5F5F5),
           fontFamily: 'Raleway',
        ),
        // home: CategoriesScreen(),
      initialRoute: '/',
        routes: {
          '/':(context)=> TabsScreen(),
        },

    );
  }
}

// class Myhomepage extends StatefulWidget {
//   const Myhomepage({Key? key}) : super(key: key);
//
//   @override
//   _MyhomepageState createState() => _MyhomepageState();
// }
//
// class _MyhomepageState extends State<Myhomepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Delimeals"),
//       ),
//       body: Center(
//         child: Text("Nvaigation tome"),
//       ),
//     );
//   }
// }
