import 'package:complaint_management_system/constant/colors.dart';
import 'package:complaint_management_system/pages/all_complaints_page.dart';
import 'package:complaint_management_system/pages/file_form_complaint.dart';
import 'package:complaint_management_system/pages/notifications.dart';
import 'package:complaint_management_system/pages/profile.dart';
import 'package:complaint_management_system/pages/signup_page.dart';
import 'package:complaint_management_system/widgets/home_catogory_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: mainColor,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    // Your name
                    const Text(
                      "Hello Nadun",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Logo Name
                    Text(
                      "DigitalCivic",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: mainColor,
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    // Search functionality
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'What do you need...',
                            prefixIcon: Icon(
                              Icons.search,
                              size: 33,
                              color: secondaryColor,
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Categories
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeCatogoryWidget(
                            image: "assets/iconImages/complaint.png",
                            title: "Create Complaint"),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AllComplaintsPage(),
                              ),
                            );
                          },
                          child: HomeCatogoryWidget(
                              image: "assets/iconImages/all.png",
                              title: "All Complaints"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeCatogoryWidget(
                            image: "assets/iconImages/notifications.png",
                            title: "Notifications"),
                        HomeCatogoryWidget(
                            image: "assets/iconImages/complete.png",
                            title: "Finished Complaints"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeCatogoryWidget(
                            image: "assets/iconImages/profile.png",
                            title: "Profile"),
                      ],
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
