import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Tracker"),
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
          Text(
            "Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/google-logo.png"),
                  Text(
                    "Sign in with Google",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    /// AQUI!!!!!
                    opacity: 0.0,
                    child: Image.asset("images/google-logo.png"),
                  ),
                ],
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/facebook-logo.png"),
                  Text(
                    "Sign in with Facebook",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset("images/facebook-logo.png"),
                  ),
                ],
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF334D92)),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 8.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: Text(
                "Sign in with email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            "or",
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0),
          SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: Text(
                "Go anonymous",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.lime),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
