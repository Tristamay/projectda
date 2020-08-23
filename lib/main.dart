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
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The name of the app should be included in the appBar
      appBar: AppBar(
        title: Text('Welcome to ...'),
        centerTitle: true,
      ),
      backgroundColor: Colors.red[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[EmailText()],
      ),
    );
  }
}

class EmailText extends StatefulWidget {
  @override
  _EmailTextState createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 250.0,
      color: Colors.orange[200],
      child: TextField(
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message), labelText: "Enter your email"),
      ),
    ));
  }
}
