import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_chicken/pages/register_page.dart';
import 'package:ui_chicken/pages/welcome_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                        builder: (context) => WelcomePage(
                          title: "Welcome",
                        ),
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
              "Login",
              style: GoogleFonts.alexBrush(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 58.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
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
            _buttonSignIn("Sign In"),
            SizedBox(height: 30.0),
            Text(
              "Forgot Password ?",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  color: color1,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account ?",
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
                    MaterialPageRoute(builder: (_) => SignUpPage()),
                  ),
                  child: Text(
                    "Sign up here",
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
