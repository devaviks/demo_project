import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image_main.dart';
import 'map_page.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/cover.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            width: double.infinity,
            child: Container(
              alignment: Alignment(0.0, 2.5),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/doctor.png"),
                radius: 60.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Dr. Rony Singh",
          style: TextStyle(
              fontSize: 25.0,
              color: Colors.blueGrey,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Kolkata, India",
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.black45,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Works in Medical Hospital",
          style: TextStyle(
              fontSize: 15.0,
              color: Colors.black45,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            elevation: 2.0,
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                child: Text(
                  "Edit Information",
                  style: TextStyle(
                      letterSpacing: 2.0, fontWeight: FontWeight.w300),
                ))),
        SizedBox(
          height: 15,
        ),
        Text(
          "Medical Student || Physiotherapist",
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.black45,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Bookings",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "20",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Booked by me",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "2000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Route route = MaterialPageRoute(
                    builder: (context) => const MapPage());
                Navigator.push(context, route);
              },
              icon: Icon(
                Icons.settings,
                size: 24.0,
              ),
              label: Text('Profile Settings'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, foregroundColor: Colors.blue),
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Route route = MaterialPageRoute(
                    builder: (context) => const ImageMain());
                Navigator.push(context, route);
              },
              icon: Icon(
                Icons.info_rounded,
                size: 24.0,
              ),
              label: Text('Add Information'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, foregroundColor: Colors.red),
            ),
          ],
        )
      ],
    );
  }
}
