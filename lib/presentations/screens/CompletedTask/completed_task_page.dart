import 'package:aegis/presentations/screens/CompletedTask/widgets/completed_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../HomePage/Home/home.dart';

class CompletedTask extends StatelessWidget {
  const CompletedTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            ),
          ),
          onPressed: () => Get.offAll(const Home()),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "COMPLETED TASKS",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: const [
                TaskWidget(
                  title: "LOGO DESIGN",
                  description:
                  "Create a user friendly logo design for the employee app called aevora",
                ),
                TaskWidget(
                  title: "HOMEPAGE DESIGN",
                  description:
                  "Create a user friendly logo design for the employee app called aevora",
                ),
                TaskWidget(
                  title: "LOGIN DESIGN",
                  description:
                  "Create a user friendly logo design for the employee app called aevora",
                ),
                TaskWidget(
                  title: "PROFILE DESIGN",
                  description:
                  "Create a user friendly logo design for the employee app called aevora",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
