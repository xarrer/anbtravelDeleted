import 'package:anbtravel/models/travel_destinations.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            TravelDestinations destination = destinations[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    child: Image(
                      fit: BoxFit.cover,
                      height: 150,
                      width: 200,
                      image: AssetImage(destination.image),
                    ),
                  ),
                  Text(destination.city,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            );
          }),
    );
  }
}
