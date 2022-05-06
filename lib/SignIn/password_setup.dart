import 'package:flutter/material.dart';
import 'package:freeze_app/SignIn/otp_screen.dart';

class PasswordSetup extends StatefulWidget {
  const PasswordSetup({Key? key}) : super(key: key);

  @override
  State<PasswordSetup> createState() => _PasswordSetupState();
}

class _PasswordSetupState extends State<PasswordSetup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 46, 45, 45),
      body: Stack(
        children: [
          Positioned(
            top: 250,
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
              top: 370,
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
              top: 400,
              left: 100,
              child: Text(
                "Enter your Mobile Number",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF939F9C),
                ),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                  height: 300,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(0xFF393838),
                  ),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 45,
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.vpn_key,
                              color: Color(0xFF939F9C)),
                          labelText: 'New Password',
                          labelStyle: const TextStyle(color: Color(0xFF939F9C)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.vpn_key,
                              color: Color(0xFF939F9C)),
                          labelText: 'Re-Type Password',
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
                                  builder: (context) => const OtpScreen()),
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
                            "Create Password",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ])),
            ],
          )
        ],
      ),
    );
  }
}
