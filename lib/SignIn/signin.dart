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
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Register"),
      ),
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
              left: 95,
              child: Text(
                "Welcome to RITE Foundation",
                style: TextStyle(
                  fontSize: 20,
                ),
              )),
          const Positioned(
              top: 240,
              left: 125,
              child: Text(
                "Sign in to continue",
                style: TextStyle(
                  fontSize: 20,
                ),
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
                  color: Colors.amberAccent,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                      ),
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person_outline_rounded),
                          labelText: 'UserName',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 350,
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                      ),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 325,
                        child: const Center(
                            child: Text(
                          "SignIn",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 325,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Center(
                            child: Text(
                          "Google SignIn",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't Have an"),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'account?',
                                style: TextStyle(fontWeight: FontWeight.bold),
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
