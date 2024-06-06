import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/Screens/dashboardscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool _obscureText = true;

  void _login() {
    if (_formKey.currentState!.validate()) {
      String email = emailTextEditingController.text;
      String password = passwordTextEditingController.text;

      if (email == "vinayshirsat1513@gmail.com" && password == "123456") {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login Successful'),
            backgroundColor: Colors.greenAccent,
          ),
        );
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DashBoardScreen()));
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid email or password')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
              ),
              Image.asset("assets/images/Group12.png"),
              const SizedBox(height: 10),
              Container(
                height: 170,
                width: 370,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 315,
                        child: TextFormField(
                          controller: emailTextEditingController,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(250, 200, 162, 1),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(250, 200, 162, 1),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "PetGuardian@gmail.com",
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(241, 241, 250, 1),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter email";
                            }

                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Password",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                      Container(
                        height: 36,
                        width: 315,
                        child: TextFormField(
                          obscureText: _obscureText,
                          controller: passwordTextEditingController,
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(250, 200, 162, 1),
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(250, 200, 162, 1),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "*******",
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(241, 241, 250, 1),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter password";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 3),
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 30,
                        width: 300,
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 51, 50, 50),
                              ),
                            ),
                            children: const <TextSpan>[
                              TextSpan(text: 'Forgot Password '),
                              TextSpan(
                                text: '? Click Here',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(10, 10, 12, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    height: 35,
                    width: 327,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: _login,
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 2.0,
                    endIndent: 90,
                    indent: 50,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    height: 35,
                    width: 327,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Implement login with email logic here
                      },
                      child: Text(
                        "LOGIN WITH EMAIL",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 60),
                    height: 35,
                    width: 327,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Implement login with Facebook logic here
                      },
                      child: Text(
                        "LOGIN WITH FACEBOOK",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        height: 60,
                        width: 327,
                        child: Column(
                          children: [
                            Text(
                              "By continuing you agree to our ",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(31, 32, 41, 1),
                              ),
                            ),
                            Text(
                              "Terms & Privacy Policy ",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(31, 32, 41, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
