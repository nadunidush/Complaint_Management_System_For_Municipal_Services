import 'package:complaint_management_system/constant/colors.dart';
import 'package:complaint_management_system/widgets/all_complaint_widget.dart';
import 'package:flutter/material.dart';

class AllComplaintsPage extends StatefulWidget {
  const AllComplaintsPage({super.key});

  @override
  State<AllComplaintsPage> createState() => _AllComplaintsPageState();
}

class _AllComplaintsPageState extends State<AllComplaintsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Complaints",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              AllComplaintWidget(
                title: "Road Repair",
                image:
                    "https://4graniteinc.com/wp-content/uploads/2014/03/Southern-California-Road-Repair-and-Maintenance.jpg",
              ),
              AllComplaintWidget(
                title: "Garbage Collection",
                image:
                    "https://images.fastcompany.com/image/upload/f_webp,c_fit,w_1920,q_auto/fc/3021151-poster-1280-garbage.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
