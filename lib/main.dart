import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProjectDA',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

// The Homepage
// Should ask the user to create an account or login
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The name of the app should be included in the appBar
      appBar: AppBar(
        title: Text('Welcome to ...'),
        centerTitle: true,
      ),
      backgroundColor: Colors.red[300],
    );
  }
}
