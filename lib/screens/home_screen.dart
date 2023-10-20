import 'package:chat_app/widgets/category_selector.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

import '../widgets/recent_chats.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30.0,
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          iconSize: 30.0,
        ),
        title: const Text(
          "Chats",
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          const CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow[50],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  )),
              child: const Column(
                children: <Widget>[
                  favoriteContacts(),
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
