import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Color(0xffb8b8b8),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.airplane_ticket),
                color: Color(0xffb8b8b8),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Color(0xffb8b8b8),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.people),
                color: Color(0xffb8b8b8),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: GoogleFonts.getFont('Montserrat', fontSize: 14),
            ),
            Text(
              'Aspen',
              style: GoogleFonts.getFont('Montserrat',
                  fontSize: 32, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SearchBar(
                hintText: 'Find things to do',
                hintStyle: MaterialStatePropertyAll(
                  GoogleFonts.getFont('Montserrat',
                      color: const Color(0xffB8B8B8),
                      fontWeight: FontWeight.w500),
                ),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xffF3F8FE)),
                leading: const Icon(
                  Icons.search_rounded,
                  color: Color(0xffB8B8B8),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                children: [
                  ChoiceChip(
                    labelPadding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 12, right: 12),
                    selected: true,
                    surfaceTintColor: Colors.transparent,
                    selectedColor: Color(0xffF3F8FE),
                    label: Text(
                      'Location',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: Color(0xff196EEE),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ChoiceChip(
                    labelPadding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 12, right: 12),
                    selected: true,
                    surfaceTintColor: Colors.transparent,
                    selectedColor: Color(0xffF3F8FE),
                    label: Text(
                      'Hotels',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: Color(0xffb8b8b8),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ChoiceChip(
                    labelPadding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 12, right: 12),
                    selected: true,
                    selectedColor: Colors.transparent,
                    label: Text(
                      'Food',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: Color(0xffb8b8b8),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ChoiceChip(
                    labelPadding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 11, right: 11),
                    selected: true,
                    selectedColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    disabledColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    label: Text(
                      'Adventure',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        color: Color(0xffb8b8b8),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text(
                "Popular",
                style: GoogleFonts.getFont(
                  'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
