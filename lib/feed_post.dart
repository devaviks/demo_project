import 'package:flutter/material.dart';

class FeedPost extends StatefulWidget {
  const FeedPost({super.key});

  @override
  _FeedPostState createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Container(
                height: MediaQuery.of(context).size.height * .3225,
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
                    Text("posted a status"),
                    Text(
                      "                 30 sec ago",
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
                            "make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"
                            "remaining essentially unchanged.",
                        style: TextStyle(
                            fontSize: 12.5, letterSpacing: 0.2, height: 1.2),
                      )),
                  Divider(
                      thickness: 1,
                      color:Color(0xffF2F2F2)
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),

                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          size: 24.0,
                        ),
                        label: Text('like'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xffC4C4C4),
                            elevation: 0.0,
                            shadowColor: Colors.transparent
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),


                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          size: 24.0,
                        ),
                        label: Text('Comment'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xffC4C4C4),
                            elevation: 0.0,
                            shadowColor: Colors.transparent
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: 24.0,
                        ),
                        label: Text('Share'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xffC4C4C4),
                          elevation: 0.0,
                          shadowColor: Colors.transparent
                        ),
                      ),
                    ],
                  )
                ])
            )),
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Container(
                height: MediaQuery.of(context).size.height * .3225,
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
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage('assets/images/doctor.png'),
                      ),
                    ),
                    Text(
                      "Dr. Rony Singh ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text("posted a status"),
                    Text(
                      "           1 min ago",
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
                        "make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,"
                        "remaining essentially unchanged.",
                        style: TextStyle(
                            fontSize: 12.5, letterSpacing: 0.2, height: 1.2),
                      )),
                  Divider(
                      thickness: 1,
                      color:Color(0xffF2F2F2)
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),

                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          size: 24.0,
                        ),
                        label: Text('like'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xff007DFE),
                            elevation: 0.0,
                            shadowColor: Colors.transparent
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),


                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          size: 24.0,
                        ),
                        label: Text('Comment'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color(0xffC4C4C4),
                            elevation: 0.0,
                            shadowColor: Colors.transparent
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: 24.0,
                        ),
                        label: Text('Share'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Color(0xffC4C4C4),
                            elevation: 0.0,
                            shadowColor: Colors.transparent
                        ),
                      ),
                    ],
                  )
                ]))),
      ],
    );
  }
}
