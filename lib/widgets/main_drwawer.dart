
import 'package:delimeals/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
class Maindrwaer extends StatelessWidget {
  const Maindrwaer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 120,
            width: double.infinity
            ,
            padding: EdgeInsets.all(20),
  alignment: Alignment.centerLeft,
            child: Text("Coocking Up 1 ",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 20,

          ),
          ListTile(
            leading: Icon(Icons.restaurant,
            size: 26,),
            title: Text(
              'Meals',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
            onTap: (){
              null;
            },
          ),
          ListTile(
            leading: Icon(Icons.settings,
              size: 26,),
            title: Text(
              'Filters',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
            onTap: (){

            },
          )
        ],
      ),
    );
  }
}
