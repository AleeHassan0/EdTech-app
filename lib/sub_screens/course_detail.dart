import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails(
      {super.key,
      required this.fullDetails,
      required this.name,
      required this.image,
      required this.duration});
  final String fullDetails;
  final String name;
  final String image;
  final String duration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: GoogleFonts.rubik(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 20,
            ),
            Text('About the course',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            const SizedBox(
              height: 10,
            ),
            Text(
              fullDetails,
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Duration',
                style: GoogleFonts.rubik(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            const SizedBox(
              height: 5,
            ),
            Text(duration),
            Padding(
              padding: const EdgeInsets.only(left: 33, top: 60),
              child: Container(
                height: 46,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffE3562A)),
                child: Center(
                    child: Text(
                  'Add to cart',
                  style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
