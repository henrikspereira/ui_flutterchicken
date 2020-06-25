import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_chicken/pages/login_page.dart';
import 'package:ui_chicken/pages/welcome_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;

  var color1 = Color(0xff1e3c72);
  var color2 = Color(0xff2a5298);
  var color3 = Color(0xffEE6D68);

  _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                  InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_left,
                          size: 32.0,
                          color: Colors.black,
                        ),
                        Text(
                          "Back",
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
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
              "Register",
              style: GoogleFonts.alexBrush(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 58.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "It is a long established fact that a reader will be distracted by the readable content.",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.0),
            _textFieldEmail(),
            _textFieldPassword(),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Terms and Condition ",
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color: color1,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Text(
                  " and the ",
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Privacy Policy",
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color: color1,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60.0),
            _buttonSignIn("Sign Up"),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Already have an account ?",
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SignInPage()),
                  ),
                  child: Text(
                    "Sign in here",
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        color: color1,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: TextFormField(
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: .5,
            ),
          ),
          decoration: InputDecoration(
            hintText: "Enter your e-mail",
            hintStyle: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true,
          ),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: TextFormField(
          obscureText: _obscureText,
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: .5,
            ),
          ),
          decoration: InputDecoration(
            hintText: "Enter your password",
            hintStyle: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true,
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Color(0xffcccccc),
              ),
              onPressed: _toggle,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonSignIn(text) {
    return InkWell(
      onTap: () {},
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
}
