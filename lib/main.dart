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
// Also has text fields for an email and password
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The name of the app should be included in the appBar
      // appBar is the bar at the top of the page
      appBar: AppBar(
        title: Text('Welcome to ...'),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      // The body of the homepage is made of 4 columns
      // The last column is a row of 2 buttons
      // They are each centered
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // The icon is a placeholder for the app logo
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

// The textfield where users enter their email
class EmailText extends StatefulWidget {
  @override
  _EmailTextState createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
  // Controller that will handle any changes to be made to the text
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // The textfield is in a container which is centered
    return Center(
        child: Container(
      width: 250.0,
      // Setting the visual elements of the text
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

// The textfield where the user enters a password
class PasswordText extends StatefulWidget {
  @override
  _PasswordTextState createState() => _PasswordTextState();
}

// The same as the email class but has extra padding on the top to avoid collision
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

// The buttons where the user chooses to create an account or login
class LoginAndCreatAccountButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The buttons are in containers
    // The containers are in a row
    // The row is in a container
    // The container is centered
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        width: 230.0,
        child: Row(
          children: <Container>[
            Container(
                child: RaisedButton(
              child: Text("Create Account"),
              // Currently the buttons being pressed down does nothing
              onPressed: () => null,
            )),
            Container(
              child: RaisedButton(
                onPressed: () => null,
                child: Text("Login"),
              ),
              padding: EdgeInsets.only(
                  left: 10.0), // This is extra padding to avoid collision
            )
          ],
        ),
      ),
    );
  }
}
