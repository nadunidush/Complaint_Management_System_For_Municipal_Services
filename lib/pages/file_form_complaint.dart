import 'package:complaint_management_system/constant/colors.dart';
import 'package:complaint_management_system/widgets/file_form_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FileFormComplaint extends StatefulWidget {
  const FileFormComplaint({super.key});

  @override
  State<FileFormComplaint> createState() => _FileFormComplaintState();
}

class _FileFormComplaintState extends State<FileFormComplaint> {
  String? _fileName;
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
        title: Text(
          "Fill Form Complaint",
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 750,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complaint Details",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: mainColor),
                  ),

                  //Complaint Title
                  FileFormWidget(
                      title: "Complaint Title",
                      icon: Icons.title,
                      hintText: "Enter Title"),

                  //Complaint Description
                  FileFormWidget(
                    title: "Complaint Description",
                    icon: Icons.description,
                    hintText: "Enter your complaint description",
                  ),

                  SizedBox(height: 20.0),

                  //Complaint Image
                  Text(
                    "Complaint Images",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.file_copy_outlined,
                          size: 30,
                          color: secondaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.black, width: 1),
                          )),
                          onPressed: _pickFile,
                          child: Text('Choose File'),
                        ),
                        if (_fileName != null) Text('File: $_fileName'),
                      ],
                    ),
                  ),

                  //Complaint URL link
                  FileFormWidget(
                      title: "Complaint Location URL",
                      icon: Icons.link,
                      hintText: "Enter URL"),

                  SizedBox(
                    height: 55,
                  ),

                  //User's Details
                  Text(
                    "User Details",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: mainColor),
                  ),
                  FileFormWidget(
                      title: "Your Name",
                      icon: Icons.person,
                      hintText: "Enter your full name"),

                  FileFormWidget(
                      title: "Phone Number",
                      icon: Icons.phone,
                      hintText: "Enter your phone number"),

                  FileFormWidget(
                      title: "Your Email",
                      icon: Icons.email,
                      hintText: "Enter your email"),

                  FileFormWidget(
                      title: "Your Address",
                      icon: Icons.home,
                      hintText: "Enter your address"),

                  SizedBox(
                    height: 25,
                  ),
                  //Submit Button
                  Center(
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                            colors: [Color(0xffBB1900), Color(0xffFFB000)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text("Submit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
