import 'package:complaint_management_system/widgets/text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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

                //Form
                TextFormFieldWidget(icon: Icons.person, hintText: "User Name"),
                SizedBox(height: 30),

                //Email
                TextFormFieldWidget(icon: Icons.email, hintText: "Email"),
                SizedBox(height: 30),

                //password
                TextFormFieldWidget(icon: Icons.lock, hintText: "Password"),
                SizedBox(height: 30),

                //confirm password
                TextFormFieldWidget(
                    icon: Icons.password_outlined,
                    hintText: "Confirm Password"),

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
                    onPressed: () {},
                    child: Text(
                      "Registor Here",
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
                    text: 'Already have an account? ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
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
