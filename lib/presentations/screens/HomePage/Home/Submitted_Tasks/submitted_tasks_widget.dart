import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmittedTasksWidget extends StatelessWidget {
  final int index;
  final String title;
  final String description;

  const SubmittedTasksWidget({
    super.key,
    required this.index,
    required this.title,
    required this.description,
  });

  static const List<Color> colorSequence = [
    Color(0XFFB2DFFF),
    Color(0XFFFFEDCF),
    Color(0XFFC9ADFF),
    Color(0XFFC2FFDA),
    Color(0XFFFFC2C3),
    Color(0XFFFBC1FF),
    Color(0XFFC1FDFF),
  ];

  // Get color based on index (cycles through the colors)
  Color getColorForIndex(int index) {
    return colorSequence[index % colorSequence.length];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      decoration: BoxDecoration(
        color: getColorForIndex(index),
        borderRadius: BorderRadius.circular(2),
        border: const Border(
          top: BorderSide(color: Colors.black, width: 2),
          left: BorderSide(color: Colors.black, width: 2),
          right: BorderSide(color: Colors.black, width: 4),
          bottom: BorderSide(color: Colors.black, width: 4),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            const Positioned(
              right: -5,
              top: -5,
              child: Icon(
                Icons.north_east_outlined,
                size: 21,
                color: Colors.black,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title with arrow icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                // Description
                Expanded(
                  child: Text(
                    description,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.black,
                      height: 1.3,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
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
