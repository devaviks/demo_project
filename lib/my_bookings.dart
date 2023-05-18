import 'package:flutter/material.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({super.key});

  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
              padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Container(
                  height: MediaQuery.of(context).size.height * .30,
                  width: MediaQuery.of(context).size.height * .45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.02,
                          left: MediaQuery.of(context).size.height * 0.02,
                          right: MediaQuery.of(context).size.height * 0.02,
                        ),
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          backgroundImage: AssetImage('assets/images/doctor.png'),
                        ),
                      ),
                      Text(
                        "Dr. Rik Gupta ",
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text("booked you",
                      ),
                      Text(
                        "                     30 sec ago",
                        style: TextStyle(
                          fontSize: 9.5,
                        ),
                      )
                    ]),
                    Container(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.02),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry "
                              "standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to"
                              "remaining essentially unchanged.",
                          style: TextStyle(
                              fontSize: 12.5, letterSpacing: 0.2, height: 1.2),
                        )),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),

                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check,
                            size: 24.0,
                          ),
                          label: Text('Accept'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            size: 24.0,
                          ),
                          label: Text('Decline'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.red
                          ),
                        ),
                      ],
                    )
                  ])
              )),
        ]
    );
  }
}