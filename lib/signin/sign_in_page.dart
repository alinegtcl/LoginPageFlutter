import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../customwidget/custom_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time Tracker"),
        backgroundColor: Colors.blue[200],
      ),
      body: _desenhaBody(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _desenhaBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 48.0),
          CustomButton(
            title: "Sign in with Google",
            color: Colors.white,
            textColor: Colors.black87,
            onPressed: () {
              _showToastMessage("Clicou em botão login com google");
            },
            icon: Image.asset("images/google-logo.png"),
          ),
          const SizedBox(height: 8.0),
          CustomButton(
            title: "Sign in with Facebook",
            color: const Color(0xFF334D92),
            textColor: Colors.white,
            onPressed: () {
              _showToastMessage("Clicou em botão login com facebook");
            },
            icon: Image.asset("images/facebook-logo.png"),
          ),
          const SizedBox(height: 8.0),
          CustomButton(
            title: "Sign in with email",
            color: Colors.teal,
            textColor: Colors.white,
            onPressed: () {
              _showToastMessage("Clicou em botão login por email");
            },
          ),
          const SizedBox(height: 8.0),
          const Text(
            "or",
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          CustomButton(
            title: "Go anonymous",
            color: Colors.lime,
            textColor: Colors.black,
            onPressed: () {
              _showToastMessage("Clicou em botão anonimo");
            },
          ),
        ],
      ),
    );
  }

  void _showToastMessage(String message) => Fluttertoast.showToast(
        msg: message,
      );
}
