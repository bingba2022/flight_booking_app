import 'package:airline/widgets/filter_widgets.dart';
import 'package:airline/widgets/flight_widgets.dart';
import 'package:airline/widgets/search_widgets.dart';
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
        children: const [
          SearchWidgets(),
          FilterWidgets(),
          FlightWidgets(),
        ],
      ),
    );
  }
}
