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
        primarySwatch: null,
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
        backgroundColor: Colors.red[300],
      ),
      //backgroundColor: Colors.red[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.star,
            size: 100.0,
            color: Colors.red[300],
          ),
          EmailText(),
          PasswordText(),
          LoginAndCreatAccountButtons()
        ],
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
      child: TextField(
        controller: this.controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    ));
  }
}

class PasswordText extends StatefulWidget {
  @override
  _PasswordTextState createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: EdgeInsets.only(top: 10.0),
      width: 250.0,
      child: TextField(
        controller: this.controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.message),
          labelText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    ));
  }
}

class LoginAndCreatAccountButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        width: 230.0,
        child: Row(
          children: <Container>[
            Container(
                child: RaisedButton(
              child: Text("Create Account"),
              onPressed: () => null,
            )),
            Container(
              child: RaisedButton(
                onPressed: () => null,
                child: Text("Login"),
              ),
              padding: EdgeInsets.only(left: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
