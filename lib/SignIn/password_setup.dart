import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
