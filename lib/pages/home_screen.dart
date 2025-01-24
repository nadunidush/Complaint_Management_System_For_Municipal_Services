import 'package:complaint_management_system/constant/colors.dart';
import 'package:complaint_management_system/pages/file_form_complaint.dart';
import 'package:complaint_management_system/pages/home_page.dart';
import 'package:complaint_management_system/pages/notifications.dart';
import 'package:complaint_management_system/pages/profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // Define the pages for each bottom navigation tab
  final List<Widget> _pages = [
    const HomePage(),
    const FileFormComplaint(),
    const Notifications(),
    const Profile(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: secondaryColor, // Set the selected icon color
        unselectedItemColor: Colors.grey, // Set the unselected icon color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Complaint',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
