import 'package:cyala3/models/Signup.dart';
import 'package:cyala3/widgets/bottombar.dart';

import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget{

  @override
  _SignInPageState createState() => _SignInPageState();

}

class _SignInPageState extends State<SignInPage>{

  bool _toggleVisiblity = true;

 Widget _buildEmailTextField(){
   return TextFormField(
     style: TextStyle(color: Colors.white),
    
     decoration: InputDecoration(
       
       hintText: "Your email or phone number ",
       hintStyle: TextStyle(color: Colors.white70),
     ),
   );
 }
 
 Widget _buildPasswordTextField(){
   return TextFormField(
     style: TextStyle(color: Colors.white),

     decoration: InputDecoration(
       hintText: "Password",
       hintStyle: TextStyle(color: Colors.white70),
       suffixIcon: IconButton(
         onPressed: (){
           _toggleVisiblity = !(_toggleVisiblity);
         },
         icon :Icon(Icons.visibility_off),
       ),
     ),
     obscureText: _toggleVisiblity,
    
   );
 }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       
       
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/wall.jpg'),
             fit:BoxFit.fill,
             ),
           
           
         ),
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 10.0) ,
           
           
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
                Text("CYALA", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w300 ,color: Colors.white, letterSpacing: 7),),
                Text("Sign In",style: TextStyle(fontSize: 17, color: Colors.white),),
             
             SizedBox(height: 50,),
             SizedBox(height: 20,),

             Card(
               elevation: 0.0,
               child: Container(
                 decoration: BoxDecoration(color: Colors.black87),
                 child: Padding(
                    
                    padding: EdgeInsets.all(20.0),
                     child: Column(
                     children: <Widget>[
                       

                       _buildEmailTextField(),
                       _buildPasswordTextField(),
                       
                     ],
                    ),
                 ),
               ) ,
               
               
               ),
               SizedBox(height: 30,),
               GestureDetector(
                 onTap:(){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
                 }, 
                   child: Container(
                   width: 320,
                   height: 40,
                   decoration: BoxDecoration(
                     
                     color: Colors.white24,
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Center(child: Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20, letterSpacing: 1),),),
                   
                 ),
               ),
             Divider(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
               Text("Don't have an account?",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),),
               GestureDetector(
                 onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));
                 },
                 child: 
                 Text(
                   
                   "  Sign Up", 
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 18, 
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400),
                    )
                  ),
             ],
             ),
             SizedBox(height: 10,),
             Row(
               
               mainAxisAlignment : MainAxisAlignment.center,
               children: <Widget>[

                 Text("Forgotten Password?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,letterSpacing: 1.5, fontSize: 16),)
             ],
             ),
             ],
            ),
           
           ),
       ),
     );
  }
}