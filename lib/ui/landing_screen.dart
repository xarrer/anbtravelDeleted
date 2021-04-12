import 'package:anbtravel/constants/costants.dart';
import 'package:anbtravel/ui/destination_carousel.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'What would you like to find?',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //Main Row Elements For Navigations
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    reusableCard(Icons.map),
                    reusableCard(Icons.flight),
                    reusableCard(Icons.hotel)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: SizedBox(
                    height: 20.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Destinations',
                          style: kPrimaryDefaultBoldTextStyle,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('See all clicked');
                          },
                          child: Text(
                            'See All',
                            style: kGreenDefaultTextStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Destination Carousel Design below
                DestinationCarousel(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Main Menu ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                  ),
                ),
                //browsing custom buttons
                Container(
                  height: 300,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            reusableContainer('Itinerary', Icons.map),
                            reusableContainer('Check Flights', Icons.flight),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            reusableContainer('Hotels', Icons.hotel),
                            reusableContainer('Profile', Icons.person),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget reusableContainer(String text, IconData _iconData) {
  return Container(
    height: 100,
    width: 130,
    decoration: BoxDecoration(
      color: Colors.blue[50],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _iconData,
          color: Colors.teal,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.black87, fontSize: 16),
        ),
      ],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget reusableCard(IconData data) {
  return Container(
    child: CircleAvatar(
      backgroundColor: Colors.green.withOpacity(0.9),
      child: Icon(
        data,
        color: Colors.white,
      ),
    ),
  );
}
