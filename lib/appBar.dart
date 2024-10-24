import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 169, 161),
      appBar: AppBar(
        title: const Text('AppBar Icon Menu'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              print('Shopping Cart Button is Clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              print('Search Button is Clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Irene Choi'),
              accountEmail: const Text('irenelove112@naver.com'),
              onDetailsPressed: () {
                print('Arrow is Clicked!');
              },
              decoration: BoxDecoration(
                  color: Colors.redAccent[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/profile2.png'),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[800],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is Clicked!');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[800],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is Clicked!');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is Clicked!');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
