import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class getStarted extends StatefulWidget {
  @override
  _getStartedState createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          color: Colors.white,
            splashColor: Colors.grey[200],
            icon: Icon(
                Icons.arrow_back_rounded,
              //color: Colors.white,
            ),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
        centerTitle: true,
        title: Text(
            "Getting Started",
          style: GoogleFonts.dancingScript(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )
          ),
        ),

      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 240, 0),
              child: Text(
                "Facial Age",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    fontSize: 40,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Find out your age based on the way you look.",
              style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                )
              ),
            ),
            SizedBox(height: 20,),
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                "https://images.unsplash.com/photo-1541848756149-e3843fcbbde0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1363&q=80",
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 240, 0),
              child: Text(
                  "Vocal Age",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Find out your age based on your voice.",
              style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],

                )
              ),
            ),
            SizedBox(height: 40,),

            //Buttons
            FlatButton(
              color: Colors.black87,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Facial",
                    style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )
                    ),
                  ),
                ),
            ),
            SizedBox(height:10),
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              color: Colors.black87,
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Vocal",
                    style: GoogleFonts.comfortaa(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      )
                    ),
                  ),
                ),
            ),

          ],
        ),
      )
    );
  }
}
