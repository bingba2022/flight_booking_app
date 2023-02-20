import 'package:airline/cards/flight_cards.dart';
import 'package:flutter/material.dart';

class FlightWidgets extends StatelessWidget {
  const FlightWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 545,
      child: ListView(
        shrinkWrap: true,
        children: [
          FlightCards(
            heroTag: '1',
            duration: '14H 25M',
            departureTime: '11:05',
            arrivalTime: '16:30',
            flightNum: 'Flight No. BH 117',
            airline: 'Bingba Air',
            price: '₩2,320,000',
            icon: Icons.hive_outlined,
            color: Colors.brown.shade200,
            bgColor: Colors.yellow.shade200,
          ),
          const SizedBox(
            height: 20,
          ),
          FlightCards(
            heroTag: '2',
            duration: '15H 20M',
            departureTime: '12:10',
            arrivalTime: '18:10',
            flightNum: 'Flight No. LK 230',
            airline: 'Lucy Air',
            price: '₩2,141,000',
            icon: Icons.rocket_launch,
            color: Colors.pink.shade200,
            bgColor: Colors.pink.shade50,
          ),
          const SizedBox(
            height: 20,
          ),
          FlightCards(
            heroTag: '3',
            duration: '15H 20M',
            departureTime: '12:10',
            arrivalTime: '18:10',
            flightNum: 'Flight No. LK 230',
            airline: 'Lucy Air',
            price: '₩2,141,000',
            icon: Icons.rocket_launch,
            color: Colors.pink.shade200,
            bgColor: Colors.pink.shade50,
          ),
        ],
      ),
    );
  }
}
