import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../home.dart';

class AssignedTaskDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String assignedby;
  final String deadline;
  final bool isRework;

  const AssignedTaskDetailPage({
    super.key,
    required this.title,
    required this.description,
    required this.assignedby,
    required this.deadline,
    required this.isRework,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEFDFE),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: ElevatedButton(
          onPressed: () => Get.off(() => const Home()),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
            backgroundColor: Colors.white,
            elevation: 0,
            side: const BorderSide(color: Colors.black, width: 2),
          ),
          child: const Icon(Icons.arrow_back, color: Colors.black, size: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                title.toUpperCase(),
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: isRework
                      ? const Color(0xFFB01919)
                      : const Color(0xFF2632C2),
                ),
              ),
              const SizedBox(height: 8),
              if (isRework)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0XFFFF0000), width: 2),
                      left: BorderSide(color: Color(0XFFFF0000), width: 2),
                      right: BorderSide(color: Color(0XFFFF0000), width: 4),
                      bottom: BorderSide(color: Color(0XFFFF0000), width: 4),
                    ),
                  ),
                  child: Text(
                    "REWORK",
                    style: GoogleFonts.montserrat(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              /// Timer Row
              Row(
                children: [
                  const Icon(Icons.play_circle, size: 30, color: Colors.black),
                  const SizedBox(width: 10),
                  Text(
                    "05:10:32",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Icon(Icons.arrow_forward, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              /// Description
              Text(
                description,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              /// Documentation box
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 25),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.description,
                        size: 40, color: Color(0xFFFF5900)),
                    const SizedBox(height: 8),
                    Text(
                      "DOCUMENTATION",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFFFF5900),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              /// Assigned By
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person, size: 20, color: Colors.black),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Assigned By - ${assignedby.isNotEmpty ? assignedby : "Unknown"}',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              /// Deadline
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD9D9),
                  border: const Border(
                    top: BorderSide(color: Color(0XFFD23E3E), width: 2),
                    left: BorderSide(color: Color(0XFFD23E3E), width: 2),
                    right: BorderSide(color: Color(0XFFD23E3E), width: 4),
                    bottom: BorderSide(color: Color(0XFFD23E3E), width: 4),
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.access_time, size: 20, color: Color(0XFFD23E3E)),
                    const SizedBox(width: 10),
                    Text(
                      "Deadline - ${deadline.isNotEmpty ? deadline : "Not specified"}",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
