import 'package:flutter/material.dart';

import 'feed_post.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedPost(),
      ],
    );
  }
}
