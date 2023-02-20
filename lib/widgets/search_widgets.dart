import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidgets extends StatelessWidget {
  const SearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
