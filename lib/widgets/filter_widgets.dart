import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterWidgets extends StatelessWidget {
  const FilterWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
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
    );
  }
}
