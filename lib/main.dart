import 'package:flutter/material.dart';
import 'signin/sign_in_page.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time Tracker",
      home: SignInPage(),
    );
  }

}
