import 'package:flutter/material.dart';
import 'package:flutter_web/components/header.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/jumbotron.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png', // Adjust the path accordingly
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                width: size.width,
                constraints: BoxConstraints(minHeight: size.height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Header(),
                    Jumbotron(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          Text(
                            'Admin or User? Your choice defines your SpotiPark journey. Click on the suitable icon and let the adventure begin!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.courgette(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 200, // Specify the width of the icon
                                    height:
                                        200, // Specify the height of the icon
                                    child: Image.asset(
                                        'assets/images/user.png'), // Assuming 'user.png' exists in the assets folder
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Handle admin button press
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all<Color>(Color(
                                              0XFF2B224B)), // sets the background color
                                      foregroundColor: MaterialStateProperty
                                          .all<Color>(Colors
                                              .white), // sets the text color
                                    ),
                                    child: Text('User'),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 200, // Specify the width of the icon
                                    height:
                                        200, // Specify the height of the icon
                                    child: Image.asset(
                                        'assets/images/admin.png'), // Assuming 'admin.png' exists in the assets folder
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Handle admin button press
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all<Color>(Color(
                                              0XFF2B224B)), // sets the background color
                                      foregroundColor: MaterialStateProperty
                                          .all<Color>(Colors
                                              .white), // sets the text color
                                    ),
                                    child: Text('Admin'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
