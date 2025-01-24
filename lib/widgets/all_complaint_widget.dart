import 'package:complaint_management_system/constant/colors.dart';
import 'package:flutter/material.dart';

class AllComplaintWidget extends StatefulWidget {
  final String title;
  final String image;
  AllComplaintWidget({super.key, required this.image, required this.title});

  @override
  State<AllComplaintWidget> createState() => _AllComplaintWidgetState();
}

class _AllComplaintWidgetState extends State<AllComplaintWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(18),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 3,
                blurRadius: 0.5,
                //offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              //Complaint title
              Text(
                "${widget.title}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 15,
              ),
              //Complaint Image
              Image.network(
                "${widget.image}",
                width: 250,
              ),

              SizedBox(
                height: 10,
              ),
              //Complaint Description
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                style: TextStyle(
                  fontSize: 13,
                ),
                textAlign: TextAlign.justify,
              ),

              SizedBox(
                height: 15,
              ),

              //Location
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Location: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff23B381),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  Expanded(
                    child: Text(
                      "Akshya Nagar 1st Block 1st Cross Bangalore-560016",
                      overflow: TextOverflow.visible,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 5,
              ),
              //Priority Level
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Priority Level: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff23B381),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Medium",
                      overflow: TextOverflow.visible,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 5,
              ),
              //department
              Row(
                children: [
                  Text(
                    "Department: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff23B381),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      "Road Department",
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 8,
              ),
              //status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffB74BE5),
                        fontSize: 14),
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                    size: 30,
                    weight: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
