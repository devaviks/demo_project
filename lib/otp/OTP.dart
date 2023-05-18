import 'package:flutter/material.dart';

import '../forgot_pass/forgot_password.dart';


class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Center(
                        child: SizedBox(
                          child: Image(
                            image: AssetImage(
                                'assets/images/otp.jpg'),
                            height: 280,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 10),
                        child: Text(
                          "Join us now to use all of our services from one app.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff164276),
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      Container(
                        padding: const EdgeInsets.only(
                            top: 25, left: 25, right: 25, bottom: 10),
                        child: Text(
                          "Enter One Time Password (OTP)",
                          style: TextStyle(
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 25, right: 25, bottom: 25),
                        child: Text(
                          "Waiting to automatically detect OTP sent to your mobile number ",
                          style: TextStyle(
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OtpInput(_fieldOne, true), // auto focus
                          OtpInput(_fieldTwo, false),
                          OtpInput(_fieldThree, false),
                          OtpInput(_fieldFour, false)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Center(
                          child: Text(
                            "Resend OTP in 30 seconds",
                            style: TextStyle(
                                color: Color(0xffFF5C31),
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: SizedBox(
                          height: 55, //height of button
                          width: 342, //width of button
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              // change background color of button
                              backgroundColor: const Color(
                                  0xff0A345E), // change text color of button
                            ),
                            child: const Text('Submit'),
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => const ForgotPage());
                              Navigator.push(context, route);
                            },
                          ),
                        ),
                      )
                    ]))));
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.green),
            ),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}


