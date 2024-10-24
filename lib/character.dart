// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List for Upgrade',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: const Text(
          'List for Upgrade',
        ),
        backgroundColor: Colors.pink[200],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/balloon.gif"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 100.0,
              color: Colors.pink[200],
              thickness: 2,
              endIndent: 30.0,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Irene Choi',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              'Status',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Newbie Web Developer',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text(
                  'Apply on Samsung Internship',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 3.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text(
                  'Complete GCP Program',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 3.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text(
                  'Write Resumé for Qualcomm',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 3.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/love.png'),
                radius: 30.0,
                backgroundColor: Colors.pink[100],
              ),
            )
          ],
        ),
      ),
    );
  }
}
