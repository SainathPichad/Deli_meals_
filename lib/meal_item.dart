import 'package:delimeals/model/meal.dart';
import 'package:delimeals/screens/meals_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MealItem extends StatelessWidget {

  final String title;
  final String id;
  final String imgaeurl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem({
    required this.title,
    required this.id,
    required this.imgaeurl,
    required this.duration,
    required this.complexity,
    required this.affordability
});

  String get complexitytext{
    String ans="";
    switch(complexity){
      case Complexity.Simple:
        ans+="Simple";break;
      case Complexity.Challenging:
        ans+="Challenging";break;
      case Complexity.Simple:
         ans+="Hard";break;
    }
    return ans;
  }


  String get affordiblty_text{
    String ans="";
    switch(affordability){
      case Affordability.Pricey:
        ans+="Pricey";break;
      case Affordability.Affordable:
        ans+="Affordable";break;
      case Affordability.Luxurious:
        ans+="Expenisve";break;
    }
    return ans;
  }
  void selectedmeal(BuildContext context) {

    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return MealDetails(id: id,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> selectedmeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(imgaeurl,
                  height: 250,width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                   bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                    color: Colors.black54,
                    child: Text(title,style:TextStyle(
                      fontSize: 26,
                      color: Colors.white

                    ),
                      softWrap: true,
                      overflow: TextOverflow.fade,

                    ),
                  ),
                )

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 6,),
                      Text('$duration min')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 6,),
                      Text(complexitytext)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.money),
                      SizedBox(width: 6,),
                      Text(affordiblty_text)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
