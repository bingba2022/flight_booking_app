import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class FlightCards extends StatelessWidget {
  const FlightCards(
      {super.key,
      required this.duration,
      required this.departureTime,
      required this.arrivalTime,
      required this.flightNum,
      required this.airline,
      required this.price,
      required this.icon,
      required this.color,
      required this.bgColor});

  final String duration, departureTime, arrivalTime, flightNum, airline, price;
  final IconData icon;
  final Color color, bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 430,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(221, 228, 225, 1),
              blurRadius: 20,
              offset: Offset(0, 3))
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'ICN',
                style: TextStyle(fontSize: 22),
              ),
              Icon(
                Icons.circle,
                size: 20,
                color: Color.fromRGBO(1, 35, 148, 1),
                shadows: [
                  Shadow(
                    color: Color.fromRGBO(1, 35, 148, 1),
                    blurRadius: 10.0,
                  )
                ],
              ),
              Dash(
                length: 80,
              ),
              Icon(Icons.connecting_airports_rounded,
                  size: 40, color: Color.fromRGBO(1, 35, 148, 1)),
              Dash(
                length: 80,
              ),
              Icon(Icons.circle,
                  size: 20,
                  color: Color.fromRGBO(255, 132, 132, 1),
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(255, 132, 132, 1),
                      blurRadius: 10.0,
                    )
                  ]),
              Text(
                'LHR',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Seoul/Incheon',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(
                width: 50,
              ),
              Text(
                duration,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                width: 80,
              ),
              const Text(
                'London',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                departureTime,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                width: 275,
              ),
              Text(
                arrivalTime,
                style: const TextStyle(fontSize: 22),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                '17 Feb 2023',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(
                width: 170,
              ),
              Text(
                flightNum,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          Row(
            children: const [
              Text(''),
              Dash(
                length: 430,
              ),
              Text('')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 5,
              ),
              FloatingActionButton(
                onPressed: () {},
                elevation: 0.8,
                mini: true,
                backgroundColor: bgColor,
                child: Icon(
                  icon,
                  color: color,
                  size: 30,
                ),
              ),
              Text(
                airline,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                width: 155,
              ),
              Text(
                price,
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                width: 5,
              )
            ],
          ),
          const SizedBox(
            height: 7,
          )
        ],
      ),
    );
  }
}
