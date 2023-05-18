import 'package:demo_project/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';
import 'booking_container.dart';
import 'feed_container.dart';

class TabBarDemo extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _key,
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blue,
              onTap: (index) {
                log('$index');
              },
              tabs: const [
                Tab(child: Text('Feed')),
                Tab(child: Text('Booking')),
                Tab(child: Text('Profile')),
              ],
            ),
            leading: Row(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 11),
                height: 42,
                width: 42,
                child: Image(
                  image: AssetImage('assets/images/logo.jpg'),
                ),
              )
            ]),
            title: Text("BookKings",
            style: TextStyle(
                color: Color(0xff007DFE),
              letterSpacing: 1.2
            ),
            ),
            backgroundColor: Color(0xffFFFFFF),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      size: 26.0,
                      color: Color(0xff007DFE),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                        Icons.person_2_outlined,
                      color: Color(0xff007DFE),
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                        Icons.more_vert,
                      color: Color(0xff007DFE),
                    ),
                  )
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              FeedPage(),
              BookingPage(),
              ProfilePage(),
            ],
          ),
        ),
      ),
    );
  }
}
