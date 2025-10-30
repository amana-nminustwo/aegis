import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../controllers/profile/profile_controller.dart';
import '../HomePage/Home/home.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfileController profileController = Get.put(ProfileController());

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
              color: Colors.white,
              border: Border.fromBorderSide(
                BorderSide(color: Colors.black, width: 2),
              ),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 20,
            ),
          ),
          onPressed: () => Get.offAll(const Home()),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "PROFILE",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF81C784),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/amana.png"),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/add_icon.png",
                          fit: BoxFit.cover,
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "AMANA",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/reward.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "YOUR WALLET BALANCE",
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "₹ 10000.00",
                        style: GoogleFonts.montserrat(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Help Option
              Obx(
                    () => GestureDetector(
                  onTap: () {
                    profileController.selectedIndex.value = 0;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: profileController.selectedIndex.value == 0
                          ? const Color(0XFF888AF7)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      border: const Border(
                        top: BorderSide(color: Colors.black, width: 2),
                        left: BorderSide(color: Colors.black, width: 2),
                        right: BorderSide(color: Colors.black, width: 4),
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/profile.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Help",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: profileController.selectedIndex.value == 0
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: profileController.selectedIndex.value == 0
                                ? const Color(0XFF888AF7)
                                : Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6),
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.black, width: 1),
                            ),
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            size: 20,
                            color: profileController.selectedIndex.value == 0
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Settings Option
              Obx(
                    () => GestureDetector(
                  onTap: () {
                    profileController.selectedIndex.value = 1;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: profileController.selectedIndex.value == 1
                          ? const Color(0XFF888AF7)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      border: const Border(
                        top: BorderSide(color: Colors.black, width: 2),
                        left: BorderSide(color: Colors.black, width: 2),
                        right: BorderSide(color: Colors.black, width: 4),
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/settings.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Settings",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: profileController.selectedIndex.value == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: profileController.selectedIndex.value == 1
                                ? const Color(0XFF888AF7)
                                : Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6),
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.black, width: 1),
                            ),
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            size: 20,
                            color: profileController.selectedIndex.value == 1
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Logout Option
              Obx(
                    () => GestureDetector(
                  onTap: () {
                    profileController.selectedIndex.value = 2;
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: profileController.selectedIndex.value == 2
                          ? const Color(0XFF888AF7)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(2),
                      border: const Border(
                        top: BorderSide(color: Colors.black, width: 2),
                        left: BorderSide(color: Colors.black, width: 2),
                        right: BorderSide(color: Colors.black, width: 4),
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/logout.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Logout",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: profileController.selectedIndex.value == 2
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: profileController.selectedIndex.value == 2
                                ? const Color(0XFF888AF7)
                                : Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6),
                            border: const Border.fromBorderSide(
                              BorderSide(color: Colors.black, width: 1),
                            ),
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            size: 20,
                            color: profileController.selectedIndex.value == 2
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
