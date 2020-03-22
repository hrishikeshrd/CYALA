import 'package:cyala3/widgets/Marked.dart';
import 'package:cyala3/widgets/Profile.dart';
import 'package:cyala3/widgets/RecentChats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        leading: IconButton(icon: Icon(Icons.person_outline),
        iconSize: 30,
        color: Colors.white,
        onPressed: (){
 
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Profile()));
                 
        },
        ),
        title: Center(
          child: Text('CYALA',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300,letterSpacing: 5),
          
          ),
        ),
        elevation: 0,
        actions: <Widget>[
        IconButton(icon: Icon(Icons.search),
        iconSize: 30,
        color: Colors.white,
        onPressed: (){

        },
        ),

        ],

      ),
      

      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Expanded(
                      child: Container(
              height: 500,
              decoration: BoxDecoration(color: Colors.white12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),

               ),
               child: Column(
                 children: <Widget>[
                   MarkedContacts(),
                   RecentChats(),
                 ],
               ),
            ),
          ),
        
        ],
        
        
      ),
     
    );
  }
}