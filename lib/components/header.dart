import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 50, bottom: 10, left: 20, right: 20), // Adjusted vertical margin
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/7.png',
            width: 80,
          ),
          SizedBox(width: 10),
          Text(
            "SpotiPark",
            style: GoogleFonts.indieFlower(fontSize: 40),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
