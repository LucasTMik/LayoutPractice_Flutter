import 'package:flutter/material.dart';
import 'package:badge/badge.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'WhatsPop',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
        appBar: AppBar(
            title: Text('WhatsPop'),
            actions: <Widget>[
          
              IconButton(
                onPressed: null,
                icon: Icon(Icons.search),
                tooltip: 'search',
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert),
                tooltip: 'menu',
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon:Icon(Icons.camera_alt)),
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ],
            ),
          ),
          body: TabBarView( 
            children: [
              Container(color:Colors.black),
              ChatList(),
              Text(''),
              Text(''),
            ],	//Pages
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'newChat',
            onPressed: null,
            child: Icon(Icons.chat),
            backgroundColor: Colors.green,
          ),
        ),
      ),

    );
  }
}


class ChatList extends StatefulWidget {
  @override
  createState() => ChatListState();
}

class ChatListState extends State<ChatList> {

  List<Widget> chatList;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
	//ChatList
      ),
    );
  }

  Widget chat = Container(
	//The Chat Component
  );
}

