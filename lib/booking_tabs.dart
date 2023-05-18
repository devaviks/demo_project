import 'package:demo_project/my_bookings.dart';
import 'package:flutter/material.dart';

import 'booked_by_me.dart';

class BookingTabs extends StatefulWidget {
  const BookingTabs({super.key});

  @override
  _BookingTabsState createState() => _BookingTabsState();
}

class _BookingTabsState extends State<BookingTabs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0),
        DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
              Container(
                child: TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.blue,
                  tabs: [
                    Tab(text: 'My Bookings'),
                    Tab(text: 'Booked by me'),
                  ],
                ),
              ),
              Container(
                  height: 300, //height of TabBarView
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                  ),
                  child: TabBarView(children: <Widget>[
                    MyBookings(),
                    Bookedbyme(),
                  ])
              )
            ])
        ),
      ],
    );
  }
}