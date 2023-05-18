
import 'package:flutter/material.dart';

import '../otp/OTP.dart';



class nextpage extends StatefulWidget {
  const nextpage({super.key});

  @override
  _nextpageState createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.26),
                child: Column(
                  children: <Widget>[
                    const Center(
                      child: SizedBox(
                        child: Image(
                          image: AssetImage('assets/images/logo.jpg'),
                          height: 130,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Login to Explore!",
                        style: TextStyle(
                          color: Color(0xff0A345E),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                            letterSpacing: 1.0
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(0xffE6E6E6)),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          labelText: 'Mobile Number',
                          hintText: 'Enter Your Mobile Number',
                          contentPadding: const EdgeInsets.all(18),
                        ),
                        controller: usernameController,
                      ),
                    ),
                    SizedBox(
                      height: 52, //height of button
                      width: 342, //width of button
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            // change background color of button
                            backgroundColor: const Color(
                                0xff0A345E), // change text color of button
                          ),
                          child: const Text('Login'),
                          onPressed: () {
                            print(usernameController);
                            print(passwordController);
                            Route route = MaterialPageRoute(
                                builder: (context) => const OtpPage());
                            Navigator.push(context, route);
                          }
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Forgot your password?",
                        style: TextStyle(
                            color: Color(0xffFF5C31),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                  ],
                ))));
  }
}
