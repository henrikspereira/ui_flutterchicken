import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_chicken/pages/login_page.dart';
import 'package:ui_chicken/pages/register_page.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var color1 = Color(0xff1e3c72);
  var color2 = Color(0xff2a5298);
  var color3 = Color(0xffEE6D68);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top + 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 32.0,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.data_usage,
                    size: 32.0,
                    color: color3,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Get Started",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Start with signing up or sign in.",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Image.asset(
              "assets/images/chicken.png",
              width: 300.0,
            ),
            SizedBox(height: 50.0),
            _buttonSignUp("Sign up"),
            SizedBox(height: 30.0),
            _buttonSignIn("Sign in"),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }

  Widget _buttonSignUp(text) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => SignUpPage()),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 120,
        child: Container(
          //margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 7.0,
                color: Colors.blue[600].withOpacity(0.3),
                spreadRadius: 1.0,
                offset: Offset(0, 3),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color1,
                color2,
              ],
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonSignIn(text) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => SignInPage()),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 120,
        child: Container(
          //margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
