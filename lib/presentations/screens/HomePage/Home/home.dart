import 'package:aegis/presentations/screens/HomePage/Home/Submitted_Tasks/submitted_tasks_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Assigned_Tasks/assigned_task_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFEFDFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Profile Row
                Row(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/amana.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AMANA",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Junior Designer",
                          style: GoogleFonts.montserrat(
                            color: const Color(0XFF959292),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                const SizedBox(height: 25),

                /// Assigned Tasks Title
                Text(
                  "ASSIGNED TASKS",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),
                AssignedTaskWidget(
                  title: 'LOGO DESIGN',
                  desc:
                  'Create a user-friendly logo design for the employee app called Aevora. The logo should reflect simplicity, modernity, and be memorable across all use cases.',
                  date: '20/10/2025',
                  showRework: true,
                ),
                SizedBox(height: 10),
                AssignedTaskWidget(
                  title: 'LOGO DESIGN',
                  desc:
                  'Create a user-friendly logo design for the employee app called Aevora. The logo should reflect simplicity, modernity, and be memorable across all use cases.',
                  date: '20/10/2025',
                  showRework: false,
                ),
                SizedBox(height: 10),

                /// Submitted Tasks Title
                Text(
                  "SUBMITTED TASKS",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),

                /// 2-Column Grid of Submitted Tasks
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SubmittedTasksWidget(index: index, title: 'Home page Design', description: 'Create a user friendly Home page design for the employee app called aevora',);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}