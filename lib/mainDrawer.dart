import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //Add stuff here later
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            ListTile(
              title: Text(
                  "Farhan Hasan",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                  "Computer Engineer",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
            ListTile(
              title: Text(
                  "Enver Nuri Unal",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                  "Computer Engineer",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
            ListTile(
              title: Text(
                  "Armagan Fidan",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              subtitle: Text(
                  "Electrical Engineer",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
            ListTile(
              title: Text(
                  "Ozge Bircan",
                style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                  "Electrical Engineer",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
            ),
          ],
        )
    );
  }
}
