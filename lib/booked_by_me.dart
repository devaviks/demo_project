import 'package:flutter/material.dart';

class Bookedbyme extends StatefulWidget {
  const Bookedbyme({super.key});

  @override
  _BookedbymeState createState() => _BookedbymeState();
}

class _BookedbymeState extends State<Bookedbyme> {
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
                  height: MediaQuery.of(context).size.height * .25,
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
                      Text("You booked",
                      ),
                      Text(
                        " Dr. Rik Gupta ",
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "                  30 sec ago",
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
                              "remaining essentially unchanged.",
                          style: TextStyle(
                              fontSize: 12.5, letterSpacing: 0.2, height: 1.2),
                        )),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("BOOKING ID:\n"
                        "BOOKING STATUS",
                          style: TextStyle(
                            fontSize:16,
                            fontWeight:FontWeight.w600,
                            height: 1.3,
                            letterSpacing: 0.5
                          ),
                        ),
                        Spacer(),
                        Text("#0984716      \n"
                        "Accepted       ",
                          style: TextStyle(
                              fontSize:14,
                              height: 1.4,
                              letterSpacing: 0.5,
                            color: Color(0xff14E857)
                          ),

                        )

                      ],
                    )
                  ])
              )),
        ]
    );
  }
}