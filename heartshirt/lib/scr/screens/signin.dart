import 'package:flutter/material.dart';

import '../style/style.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Style style = Style();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _signin(context, style),
      ),
    );
  }
}

Widget _signin(BuildContext context, Style style) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: height,
    width: width,
    child: Column(
      children: [
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          children: [
            SizedBox(
              width: width * 0.08,
            ),
            _text('Welcome,', 36, FontWeight.bold, style.colorText),
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
            _text('Sign in to continue!', 22, FontWeight.normal, Colors.grey),
          ],
        ),
        SizedBox(
          height: height * 0.12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textField(width, height, 'Email', false),
          ],
        ),
        SizedBox(
          height: height * 0.015,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_textField(width, height, 'Password', true)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width * 0.50,
            ),
            TextButton(
                onPressed: () {},
                child: _text(
                    'Forget Password?', 13, FontWeight.normal, Colors.grey))
          ],
        ),
        SizedBox(
          height: height * 0.02,
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
                    color: style.colorButton,
                    borderRadius: BorderRadius.circular(13)),
                child: Center(
                    child: _text('Login', 19, FontWeight.bold, Colors.white)),
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
            _text('Or', 20, FontWeight.bold, Colors.grey),
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
                'assets/search.png',
                height: 30,
              ),
            ),
            SizedBox(
              width: width * 0.041,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                'assets/facebook.png',
                height: 30,
              ),
            ),
            SizedBox(
              width: width * 0.041,
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
          height: height * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child:
                    _text("I'm a new user", 15, FontWeight.bold, Colors.grey)),
            SizedBox(
              width: width * 0.01,
            ),
            Flexible(
              child: TextButton(
                  onPressed: () {},
                  child:
                      _text('Sign Up', 15, FontWeight.bold, style.colorText)),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _text(String title, int fontsize, FontWeight fontWeight, Color colors) {
  return Text(
    title,
    style: TextStyle(
        color: colors, fontSize: fontsize.toDouble(), fontWeight: fontWeight),
  );
}

Widget _textField(double width, double height, String title, hide) {
  return Container(
    height: height * 0.084,
    width: width * 0.78,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: hide,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                gapPadding: 10, borderRadius: BorderRadius.circular(10)),
            labelText: title,
            labelStyle: TextStyle(color: Colors.blue, fontSize: 15)),
      ),
    ),
  );
}
