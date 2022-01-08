import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pepsico_hackathon/main.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final _mediaQueryData = MediaQuery.of(context);
    final screenWidth = _mediaQueryData.size.width;
    final screenHeight = _mediaQueryData.size.height;
    final blockSizeHorizontal = screenWidth / 100;
    final blockSizeVertical = screenHeight / 100;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              color: Colors.grey,
              width: double.infinity,
              child: Opacity(
                opacity: .4,
                child: Image.asset(
                  "assets/pirple_img.jpeg",
                  height: blockSizeVertical * 100,
                  width: blockSizeHorizontal * 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: blockSizeVertical * 2,
              left: blockSizeHorizontal * 4,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 28),
                child: Image.asset(
                  "assets/pirple_logo.png",
                  height: blockSizeVertical * 9.5,
                  width: blockSizeHorizontal * 19,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 75, horizontal: 120)),
                Text(
                  "PepsiCo Login",
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(),
              ],
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 200, 150, 100),
                child: tabs(),
              ),
            ),
            _emailFiled(context),
          ],
        ),
      ),
    );
  }
}

Widget tabs() {
  return DefaultTabController(
    length: 2,
    child: TabBar(
      tabs: [
        Tab(
          child: Text(
            "Sign in",
            style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),
          ),
        ),
        Tab(
          child: Text(
            "Sign up",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color: Colors.white
            ),
          ),
        ),
      ],
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
    ),
  );
}

Widget _emailFiled(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(40),
    padding: EdgeInsets.only(top: 235, left: 5, right: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            hoverColor: Colors.red,
            prefixIconColor: Colors.white,
            focusColor: Colors.white,
            hintText: "Phone Number",
            hintStyle: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.blueAccent,
            ),
          ),
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 30),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp(UniqueKey())),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "SIGN IN",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.blueGrey.withOpacity(0.9))
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
                child: Material(
              color: Colors.blue,
              child: InkWell(
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {},
              ),
            )),
            SizedBox(width: 6),
            Text(
              "Remember me",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Sign in with",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: 55,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp(UniqueKey())),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.facebookF,
                  ),
                  color: Colors.blueGrey.withOpacity(0.9),
                )),
            SizedBox(width: 10),
            Container(
                width: 55,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp(UniqueKey())),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                  ),
                  color: Colors.blueGrey.withOpacity(0.9),
                )),
            SizedBox(width: 10),
            Container(
                width: 55,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyApp(UniqueKey())),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.google,
                  ),
                  color: Colors.blueGrey.withOpacity(0.9),
                )),
          ],
        ),
        SizedBox(height: 40),
        _forgotPass()
      ],
    ),
  );
}

Widget _forgotPass() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Forgot Password? ",
        style: GoogleFonts.roboto(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ],
  );
}
