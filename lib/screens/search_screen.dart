import 'package:airline/cards/cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ))
        ],
        leading: const Icon(Icons.chevron_left),
        title: Text(
          'Select Flight',
          style: GoogleFonts.ubuntu(
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 35, 148, 1),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(1, 35, 148, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              children: [
                const Image(
                  image: AssetImage("images/airplane.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'ICN',
                          style: GoogleFonts.ubuntu(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '17 Feb 2023',
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Column(
                      children: [
                        Text(
                          'LHR',
                          style: GoogleFonts.ubuntu(
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Terminal 2',
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -35),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 180,
                  margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(221, 228, 225, 1),
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ],
                    color: Color.fromRGBO(255, 132, 132, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Filter',
                        style: GoogleFonts.ubuntu(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.filter_list,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 180,
                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(221, 228, 225, 1),
                          blurRadius: 10,
                          offset: Offset(0, 3)),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Sort By:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          FlightCards(
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
            duration: '15H 20M',
            departureTime: '12:10',
            arrivalTime: '18:10',
            flightNum: 'Flight No. LK 230',
            airline: 'Lucy Air',
            price: '₩2,141,000',
            icon: Icons.rocket_launch,
            color: Colors.pink.shade200,
            bgColor: Colors.pink.shade50,
          )
        ],
      ),
    );
  }
}
