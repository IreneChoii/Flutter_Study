import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        appBar: AppBar(
          title: const Text('Toast Message'),
          centerTitle: true,
          backgroundColor: Colors.yellowAccent[700],
        ),
        body: Center(
          child: FilledButton(
            onPressed: flutterToast,
            style: FilledButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // 여기서 radius 조절
              ),
            ),
            child: const Text(
              'Toast Message',
              style: TextStyle(color: Colors.yellow),
            ),
          ),
        ));
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Flutter',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.yellowAccent[700],
    fontSize: 15.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
