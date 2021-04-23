import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomInset: false,
          body: _signin(context)
      );
  }
}


Widget _signin(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: height,
    width: width,
    child: Column(
      children: [
        SizedBox(
          height: height * 0.08,
        ),
        Row(
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            text('Create Account,', 36, FontWeight.bold, Colors.blue[700]),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Row(
          children: [
            SizedBox(
                          width: width * 0.09,
            ),
            text('Sign in to get started!', 22, FontWeight.normal, Colors.grey),
          ],
        ),
        SizedBox(
          height: height * 0.08,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textField(width, height, 'Full Name', false),
          ],
        ),
        SizedBox(
          height: height * 0.015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textField(width, height, 'Email', false),
          ],
        ),
        SizedBox(
          height: height * 0.015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [textField(width, height, 'Password', true)],
        ),
        SizedBox(
          height: height * 0.10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.065,
                width: width * 0.74,
                decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(13)),
                child: Center(child: text('Sign Up', 19, FontWeight.bold, Colors.white)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 0.020,
            ),
            Container(
              height: height * 0.001,
              width: width * 0.3,
              color: Colors.blue,
            ),
            SizedBox(
              width: width * 0.04,
            ),
            text('Or', 20, FontWeight.bold, Colors.grey[400]),
            SizedBox(
              width: width * 0.04,
            ),
            Container(
              height: height * 0.001,
              width: width * 0.3,
              color: Colors.blue,
            ),
          ],
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/google.png',
                height: 30,
              ),
            ),
            SizedBox(
              width: width * 0.081,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/facebook.png',
                height: 30,
              ),
            ),
            SizedBox(
              width: width * 0.081,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/apple.png',
                height: 30,
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.09,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child:
                    text("I'm already a member.", 15, FontWeight.bold, Colors.grey)),
            SizedBox(
              width: width * 0.0005,
            ),
            Flexible(
              child: TextButton(
                  onPressed: () {},
                  child:
                      text('Sign In', 15, FontWeight.bold, Colors.blue[700])),
            )
          ],
        ),
      ],
    ),
  );
}

Widget text(String title, int fontsize, FontWeight fontWeight, Color colors) {
  return Text(
    title,
    style: TextStyle(
        color: colors, fontSize: fontsize.toDouble(), fontWeight: fontWeight),
  );
}

Widget textField(double width, double height, String title, hide) {
  return Container(
    height: height * 0.084,
    width: width * 0.78,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: hide,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)),
            labelText: title,
            labelStyle: TextStyle(color: Colors.blue, fontSize: 15)),
      ),
    ),
  );
}
