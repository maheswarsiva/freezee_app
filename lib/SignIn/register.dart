import 'package:flutter/material.dart';
import 'package:freeze_app/SignIn/password_setup.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 46, 45, 45),
      body: Stack(
        children: [
          Positioned(
            top: 75,
            left: 150,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.redAccent,
              ),
            ),
          ),
          const Positioned(
              top: 185,
              left: 85,
              child: Text(
                "Welcome to RITE Foundation",
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
          const Positioned(
              top: 205,
              left: 125,
              child: Text(
                "Enter your details",
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 550,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color(0xFF393838),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2B2B2B),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2B2B2B),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2B2B2B),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.feed, color: Color(0xFF939F9C)),
                          labelText: 'Professional Details',
                          labelStyle: TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2B2B2B),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Aadhar Card',
                          labelStyle: TextStyle(color: Color(0xFF939F9C)),
                          prefixIcon: Icon(Icons.text_snippet,
                              color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2B2B2B),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.credit_card, color: Color(0xFF939F9C)),
                          labelText: 'PAN Card',
                          labelStyle: TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Color(0xFF2B2B2B),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_android_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 60,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PasswordSetup()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF65019A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          child: const Text("Register")),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
