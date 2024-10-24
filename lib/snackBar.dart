import 'package:flutter/material.dart';

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
          title: const Text(
            'Snack Bar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigoAccent[400],
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(ctx).showSnackBar(
                    const SnackBar(content: Text('Hello')),
                  );
                },
                child: const Text(
                  'Show Me',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
