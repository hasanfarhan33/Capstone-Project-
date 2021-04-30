import 'package:capstone_app/GetStartedScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mainDrawer.dart';

class capstoneApp extends StatefulWidget {
  @override
  _capstoneAppState createState() => _capstoneAppState();
}

class _capstoneAppState extends State<capstoneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer:  myDrawer(),
      appBar: AppBar(

        elevation: 4.0,
        backgroundColor: Colors.black87,
        centerTitle: true,
        title: Text(
          "Guess my Age",
          style: GoogleFonts.dancingScript(
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              "https://images.unsplash.com/photo-1534768654272-e97681c3a2c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(height: 40,),
          Text(
            "How old am I?",
            style: GoogleFonts.dancingScript(
              textStyle: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40,),
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => getStarted()));
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Get Started",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                    wordSpacing: 0.1,
                  ),
                ),
              ),
            ),
            color: Colors.black87,
          ),
          SizedBox(height: 10,),
          FlatButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "How it works",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                    wordSpacing: 0.1,
                  ),
                ),
              ),
            ),
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}
