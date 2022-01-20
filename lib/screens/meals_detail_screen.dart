import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:delimeals/dummy_data.dart';

class MealDetails extends StatelessWidget {
final String id;
MealDetails({
  required this.id
 });


   @override
   Widget build(BuildContext context) {
     final seletedmeal=DUMMY_MEALS.firstWhere((meal) =>meal.id==id );     return Scaffold(
       appBar: AppBar(
         title: Text('${seletedmeal.title}'),
         backgroundColor: Colors.pink,
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: 200,
               width: double.infinity,
               child:Image.network(seletedmeal.imageUrl,

               fit:  BoxFit.cover,
               ) ,
             ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
               child: Text("Ingredients",
               style: TextStyle(
                 fontSize: 26,
                 fontWeight: FontWeight.bold
               ),
               ),
             ),
             Container(
               height: 159,
               width: 300,
               decoration: BoxDecoration(
                 color: Colors.white,border:Border. all(color: Colors.grey)
                   ,borderRadius: BorderRadius.circular(10)
               ),
               margin: EdgeInsets.all(10),
               padding: EdgeInsets.all(10),

               child: ListView.builder(itemBuilder: (context,index){
                  return Card(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(seletedmeal.ingredients[index]),
                    ),
                  );
               },
               itemCount: seletedmeal.ingredients.length,
               ),
             ),

             Container(
               margin: EdgeInsets.symmetric(vertical: 10),
               child: Text("  Steps",
                 style: TextStyle(
                     fontSize: 26,
                     fontWeight: FontWeight.bold
                 ),
               ),
             ),

             Container(
               height: 159,
               width: 300,
               decoration: BoxDecoration(
                   color: Colors.white,border:Border. all(color: Colors.grey)
                   ,borderRadius: BorderRadius.circular(10)
               ),
               margin: EdgeInsets.all(10),
               padding: EdgeInsets.all(10),

               child: ListView.builder(itemBuilder: (context,index){
                 return Column(
                   children: [
                     ListTile(
                       leading: CircleAvatar(
                         child: Text('# ${(index+1)}'),
                         backgroundColor: Colors.pink,
                       ),
                       title: Text(
                           seletedmeal.steps[index]
                       ),
                     ),
                     Divider()
                   ],

                 );

               },
                 itemCount: seletedmeal.steps.length,
               ),
             ),


           ],
         ),
       )
     );
   }
 }
 