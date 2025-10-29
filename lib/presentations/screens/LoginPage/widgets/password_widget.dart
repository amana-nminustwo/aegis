import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: const Border(
          top: BorderSide(color: Colors.black, width: 2),
          left: BorderSide(color: Colors.black, width: 2),
          bottom: BorderSide(color: Colors.black, width: 4), // thicker bottom
          right: BorderSide(color: Colors.black, width: 4),  // thicker right
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        controller: controller,
        obscureText: true,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.6),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
        ),
      ),
    );
  }
}
