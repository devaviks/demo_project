import 'package:flutter/material.dart';

import 'booking_tabs.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingTabs(),
      ],
    );
  }
}