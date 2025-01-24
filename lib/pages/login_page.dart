import 'package:complaint_management_system/pages/all_complaints_page.dart';
import 'package:complaint_management_system/pages/file_form_complaint.dart';
import 'package:complaint_management_system/pages/home_screen.dart';
import 'package:complaint_management_system/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 750,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 23.0, right: 23.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CREATE AN ACCOUNT",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                SizedBox(
                  height: 70,
                ),

                //Email
                TextFormFieldWidget(icon: Icons.email, hintText: "Email"),
                SizedBox(height: 30),

                //password
                TextFormFieldWidget(icon: Icons.lock, hintText: "Password"),
                SizedBox(height: 30),

                //Register Button
                SizedBox(
                  height: 45,
                ),
                Container(
                  width: 180,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 60,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Registor',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/login');
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
