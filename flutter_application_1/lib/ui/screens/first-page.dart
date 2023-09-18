import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/screens/home-page.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bk.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, bottom: 48, right: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plan your',
                  style: GoogleFonts.getFont('Montserrat',
                      color: Colors.white, fontSize: 24),
                ),
                Text(
                  'Luxurious \nVacation',
                  style: GoogleFonts.getFont('Montserrat',
                      color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:24),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomePage())));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff196EEE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          'Explore',
                          style: GoogleFonts.getFont(
                            'Montserrat',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
