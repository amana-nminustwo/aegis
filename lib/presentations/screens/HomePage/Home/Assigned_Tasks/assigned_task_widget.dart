import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page_Routes/assigned_task_page.dart';

class AssignedTaskWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String date;
  final bool showRework;

  const AssignedTaskWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.date,
    this.showRework = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
              () => AssignedTaskViewPage(
            title: title.isNotEmpty ? title : "No Title",
            description: desc.isNotEmpty ? desc : "No Description",
            deadline: date.isNotEmpty ? date : "No Deadline",
            isRework: showRework,
            assignedby: 'ADARSH',
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0XFFFEFDFE),
          borderRadius: BorderRadius.circular(2),
          border: const Border(
            top: BorderSide(color: Colors.black, width: 2),
            left: BorderSide(color: Colors.black, width: 2),
            right: BorderSide(color: Colors.black, width: 4),
            bottom: BorderSide(color: Colors.black, width: 4),
          ),
        ),
        child: Stack(
          children: [
            /// Top-right arrow icon
            const Positioned(
              right: -5,
              top: -5,
              child: Icon(
                Icons.north_east_outlined,
                size: 21,
                color: Colors.black,
              ),
            ),
            /// Main content
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title with color based on rework status
                Text(
                  title.isNotEmpty ? title : "No Title",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: showRework
                        ? const Color(0XFFA74646)
                        : const Color(0XFF2349D1),
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 6),
                /// Description
                Text(
                  desc.isNotEmpty ? desc : "No Description",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.3,
                  ),
                  softWrap: true,
                ),
                const SizedBox(height: 10),
                /// Deadline + optional rework tag
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Deadline - ${date.isNotEmpty ? date : "No Deadline"}",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                    const SizedBox(width: 8),
                    /// Rework tag
                    if (showRework)
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  color: Color(0XFFFF0000), width: 2),
                              left: BorderSide(
                                  color: Color(0XFFFF0000), width: 2),
                              right: BorderSide(
                                  color: Color(0XFFFF0000), width: 4),
                              bottom: BorderSide(
                                  color: Color(0XFFFF0000), width: 4),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "REWORK",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: const Color(0XFFFF0000),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
