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
              left: 65,
              child: Text(
                "Welcome to the RITE Foundation",
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF65019A),
                  fontWeight: FontWeight.bold,
                ),
              )),
          const Positioned(
              top: 215,
              left: 125,
              child: Text(
                "Enter your details",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF939F9C),
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
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.person_outline_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Name',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.email_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon:
                              const Icon(Icons.feed, color: Color(0xFF939F9C)),
                          labelText: 'Professional Details',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.text_snippet_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Aadhar Card',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.credit_card_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'PAN Card',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.phone_android_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'Mobile Number',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
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
                            side: const BorderSide(
                                color: Color(0xFF65019A), width: 5),
                            shadowColor: const Color(0xFF65019A),
                            elevation: 10,
                            primary: const Color(0xFF65019A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
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
