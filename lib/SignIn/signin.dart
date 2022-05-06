import 'package:flutter/material.dart';
import 'package:freeze_app/SignIn/register.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 46, 45, 45),
      body: Stack(
        children: [
          // ignore: sized_box_for_whitespace
          Positioned(
            top: 100,
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
              top: 210,
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
              top: 240,
              left: 125,
              child: Text(
                "Sign in to continue",
                style: TextStyle(fontSize: 20, color: Color(0xFF939F9C)),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
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
                        top: 30,
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
                          prefixIcon: const Icon(Icons.person_outline_rounded,
                              color: Color(0xFF939F9C)),
                          labelText: 'UserName',
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
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2B2B2B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          prefixIcon: const Icon(Icons.lock_outline,
                              color: Color(0xFF939F9C)),
                          labelText: 'Password',
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
                                  builder: (context) => const Register()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF65019A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          child: const Text("SignIn")),
                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: const Divider(
                              thickness: 3,
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      const Text("OR"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: const Divider(
                              thickness: 3,
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                    ]),
                    SizedBox(
                      height: 60,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              width: 1.0,
                              color: Color(0xFF65019A),
                            ),
                            primary: const Color(0xFF2B2B2B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          child: const Text("Google SignIn")),
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF65019A),
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't Have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF939F9C),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF65019A)),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
