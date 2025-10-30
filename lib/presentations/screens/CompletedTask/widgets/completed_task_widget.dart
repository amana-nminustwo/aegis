// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TaskWidget extends StatelessWidget {
//   final String title;
//   final String description;
//   final Color borderColor;
//   final Color textColor;
//
//   const TaskWidget({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.borderColor,
//     required this.textColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//       decoration: BoxDecoration(
//         color: const Color(0xFFC8E6C9),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: borderColor,
//           width: 2,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: GoogleFonts.poppins(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: textColor,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               description,
//               style: GoogleFonts.poppins(
//                 fontSize: 14,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final String description;

  const TaskWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFC8E6C9),
        borderRadius: BorderRadius.circular(2),
        border: const Border(
          top: BorderSide(color: Colors.black, width: 2),
          left: BorderSide(color: Colors.black, width: 2),
          right: BorderSide(color: Colors.black, width: 4),
          bottom: BorderSide(color: Colors.black, width: 4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
