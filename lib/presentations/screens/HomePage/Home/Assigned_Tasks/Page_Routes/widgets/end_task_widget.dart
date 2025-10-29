import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EndTaskWidget extends StatelessWidget {
  const EndTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          "END TASK",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w900
          ),
        ),
      ),
    );
  }
}
