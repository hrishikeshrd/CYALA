import 'package:cyala3/models/Login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget{

  @override
  _SignUpPageState createState() => _SignUpPageState();

}

class _SignUpPageState extends State<SignUpPage>{

  bool _toggleVisiblity = true;

 Widget _buildEmailTextField(){
   return TextFormField(
      style: TextStyle(color: Colors.white),
     decoration: InputDecoration(
       hintText: "Your email or phone number",
       hintStyle: TextStyle(color: Colors.grey),
       
     ),
     
   );
 }

  Widget _buildUsernameTextField(){
   return TextFormField(
style: TextStyle(color: Colors.white),
     decoration: InputDecoration(
       hintText: "Username",
       hintStyle: TextStyle(color: Colors.grey),
     ),
     );
 }
 
 Widget _buildPasswordTextField(){
   return TextFormField(
     style: TextStyle(color: Colors.white),

     decoration: InputDecoration(
       hintText: "New Password",
       hintStyle: TextStyle(color: Colors.grey),
      
     ),
      
     obscureText: _toggleVisiblity,
    
   );
 }

  Widget _buildConfirmPasswordTextField(){
   return TextFormField(
style: TextStyle(color: Colors.white),
     decoration: InputDecoration(
       hintText: "Confirm Password",
       hintStyle: TextStyle(color: Colors.grey),
       /*suffixIcon: IconButton(
         onPressed: (){
           _toggleVisiblity = !_toggleVisiblity;
         },
         icon :Icon(Icons.visibility_off),
       ),*/
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
                Text("CYALA",style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w300 ,color: Colors.white, letterSpacing: 7),),
                Text("Tell us about yourself",style: TextStyle(fontSize: 20, color: Colors.white),),
             
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
                       _buildUsernameTextField(),
                       _buildPasswordTextField(),
                       _buildConfirmPasswordTextField(),
                       
                     ],
                    ),
                 ),
               ) ,
               
               
               ),
               SizedBox(height: 40,),
               GestureDetector(
                 onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
                
                 },
               child: Container(
                   height: 50,
                   width: 320,
                   decoration: BoxDecoration(
                     color: Colors.white24,
                     
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Center(child: Text("Create an account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),),
                 ),
               ),
             ],
            ),
           
           ),
       ),
     );
  }
}