import 'package:aegis/presentations/screens/Profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../controllers/navigation/navigation_controller.dart';
import '../CompletedTask/completed_task_page.dart';
import '../Navbar/custom_bott_navbar.dart';
import '../Notification/notification_page.dart';
import 'Home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Obx(() {
          return IndexedStack(
            index: navController.selectedIndex.value,
            children: [
              Home(),
              CompletedTask(),
              NotificationPage(),
              ProfilePage(),
            ],
          );
        }),
      ),
      bottomNavigationBar: const SafeArea(
        child: CustomBottomNav(),
      ),
    );
  }
}