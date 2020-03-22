import 'package:cyala3/models/ChatUi.dart';
import 'package:cyala3/models/messagemodel.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  final User user;
  ChatScreen({this.user});
  
   
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message, bool isMe){

  return Container(
    margin: isMe? EdgeInsets.only(top:8, bottom: 8,left:80):EdgeInsets.only(top:8, bottom: 8,right:80),
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
    decoration: BoxDecoration(
    color: isMe ? Colors.white24 : Colors.white38,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
      
      
      )
    
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(message.time,style: TextStyle(color: Colors.white60, fontSize: 15),),
        SizedBox(height: 5,),
        Text(message.text,style: TextStyle(color: Colors.white, fontSize: 16),),
      ],
    ),);
  }

  _buildMessageComposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 55,
      color: Colors.white12,
      child: Row(
        
        children: <Widget>[
          IconButton(
            icon:Icon(Icons.monochrome_photos) ,
            iconSize: 25,
            color: Colors.white,
            onPressed: (){},
          ),
          Expanded(child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value){},
              decoration: InputDecoration.collapsed(
                hintText: 'Type a message',hintStyle: TextStyle(color: Colors.white70)
              ),

          ),),
          IconButton(
            icon:Icon(Icons.send) ,
            iconSize: 25,
            color: Colors.white,
            onPressed: (){},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
       

      appBar: AppBar(
        title: Center(child: Text(widget.user.name, style: TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1),)),
        elevation: 0,
        
        actions: <Widget>[
        IconButton(icon: Icon(Icons.more_horiz),
        iconSize: 30,
        color: Colors.white,
        onPressed: (){

        },
        ),

        ],
      ),

       body: GestureDetector(
         onTap: ()=> FocusScope.of(context).unfocus(),
                child: Column(
           children: <Widget>[
             Expanded(
                          child: Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage('assets/wall.jpg'),
                     fit:BoxFit.fill,
                    
                     ),
                   
                   
                 ),

                 child: ClipRRect(
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                     child: ListView.builder(
                       reverse: true,
                       padding: EdgeInsets.only(top: 20),
                     itemCount: messages.length,
                     itemBuilder: (BuildContext context, int index){
                       final Message message = messages[index];
                       final bool isMe = message.sender.id == currentUser.id;
                       return _buildMessage(message, isMe);
                     },
                   ),
                 ),
                 ),
             ),
             _buildMessageComposer(),
           ],
         ),
       ),
    );
  }
}