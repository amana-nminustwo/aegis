import 'package:aegis/presentations/screens/HomePage/Home/Assigned_Tasks/Page_Routes/widgets/assigned_task_detail_page.dart';
import 'package:aegis/presentations/screens/HomePage/Home/Assigned_Tasks/Page_Routes/widgets/end_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskStartingPage extends StatelessWidget {
  const TaskStartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Back Button
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const AssignedTaskDetailPage(title: 'Logo Design', description: 'Create a user-friendly logo design for the employee app called Aevora.', assignedby: 'Adharsh', deadline: '20/10/2025', isRework: true,)),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.white,
                    elevation: 0,
                    side: const BorderSide(color: Colors.black, width: 2),
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),


              const SizedBox(height: 40),

              /// Title
              Text(
                "YOUR TASK WILL START IN",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                "3",
                style: GoogleFonts.montserrat(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bulb.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),

              /// Timer Box
          Stack(
            clipBehavior: Clip.none, // allow overflow
            children: [
              // Main bordered container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "00:00:00",
                    style: GoogleFonts.montserrat(
                      fontSize: 45,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),

              // Positioned image (half inside, half outside)
              Positioned(
                top: -36, // move half of image outside
                left: 20, // not exactly in corner
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/twinkle.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),

              SizedBox(height: 50,),
             EndTaskWidget()
            ],
          ),
        ),
      ),
    );
  }
}
