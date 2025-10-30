import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final Color avatarBackgroundColor;
  final String avatarImagePath;

  const NotificationWidget({
    super.key,
    required this.name,
    required this.message,
    required this.date,
    required this.avatarBackgroundColor,
    required this.avatarImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF4D03F),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: avatarBackgroundColor,
          child: Image.asset(
            avatarImagePath,
            fit: BoxFit.cover,
          ),
        ),
        title: Row(
          children: [
            Text(
              name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Text(
                    date,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          message,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
