import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 35, 148, 1),
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ))
        ],
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Select Seat',
          style: GoogleFonts.ubuntu(
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(1, 35, 148, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/seat_map.png",
              fit: BoxFit.cover,
              height: 1500,
              width: 300,
            ),
            Row(
              children: [
                Transform.translate(
                  offset: const Offset(76, -1200),
                  child: SizedBox(
                    width: 120,
                    height: 450,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(
                        6,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                // 선택 되었을 때 색깔
                                color: const Color.fromARGB(255, 223, 104, 104),
                                border: Border.all(
                                  width: 2.5,
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(100, -1307),
                  child: SizedBox(
                    width: 60,
                    height: 200,
                    child: GridView.count(
                      crossAxisCount: 1,
                      children: List.generate(
                        3,
                        (index) => Text(
                          (index + 1).toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(72, -1200),
                  child: SizedBox(
                    width: 120,
                    height: 450,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(
                        6,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(84, 106, 179, 1),
                                border: Border.all(
                                  width: 2.5,
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Transform.translate(
                  offset: const Offset(80, -1400),
                  child: SizedBox(
                    width: 125,
                    height: 600,
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                      crossAxisCount: 3,
                      children: List.generate(
                        36,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          child: Container(
                            decoration: BoxDecoration(
                                // 자리 있을 때 색깔
                                color: const Color.fromARGB(255, 61, 88, 175),
                                border: Border.all(
                                  width: 2.5,
                                  color: Colors.white,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(76, -1394.5),
                  child: SizedBox(
                    width: 48.5,
                    height: 600,
                    child: GridView.count(
                      crossAxisCount: 1,
                      children: List.generate(
                        12,
                        (index) => Text(
                          (index + 4).toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(73, -1400),
                  child: SizedBox(
                    width: 125,
                    height: 600,
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 5,
                      crossAxisCount: 3,
                      children: List.generate(
                        36,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(84, 106, 179, 1),
                                border: Border.all(
                                  width: 2.5,
                                  // 자리 없을 때 색깔
                                  color: Colors.white30,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0))),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
