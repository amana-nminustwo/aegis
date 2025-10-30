import 'package:aegis/presentations/screens/Notification/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../HomePage/Home/home.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
        title: Text(
          "NOTIFICATIONS",
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
      ),
      body: ListView(
        children: const [
          NotificationWidget(
            name: "ALEENA",
            message: "profile page accepted",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.blue,
            avatarImagePath: "assets/aleena_avatar.png",
          ),
          NotificationWidget(
            name: "SREELAKSHMI",
            message: "Home page rejected",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.pink,
            avatarImagePath: "assets/sreelakshmi_avatar.png",
          ),
          NotificationWidget(
            name: "ALAN",
            message: "Rework for Login page",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.purple,
            avatarImagePath: "assets/alan_avatar.png",
          ),
          NotificationWidget(
            name: "ALBIN",
            message: "New work Added",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.green,
            avatarImagePath: "assets/albin_avatar.png",
          ),
          NotificationWidget(
            name: "ALEENA",
            message: "profile page accepted",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.blue,
            avatarImagePath: "assets/aleena_avatar.png",
          ),
          NotificationWidget(
            name: "SREELAKSHMI",
            message: "Home page rejected",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.pink,
            avatarImagePath: "assets/sreelakshmi_avatar.png",
          ),
          NotificationWidget(
            name: "ALAN",
            message: "Rework for Login page",
            date: "20/10/2025",
            avatarBackgroundColor: Colors.purple,
            avatarImagePath: "assets/alan_avatar.png",
          ),
        ],
      ),
    );
  }
}
