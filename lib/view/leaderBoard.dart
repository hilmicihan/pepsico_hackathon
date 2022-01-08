import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const Color avtar_backGround = Color(0xFF2FCB72);
const Color avtar_backGround1 = Color(0xFF0C3329);
const Color prof_Card = Color(0xFF196F3D);
const Color grade1 = Color(0xFF00b09b);
const Color grade2 = Color(0xFF96c93d);
const Color cool = Color(0xFF181A2F);
const clickedColor = Color(0xFF0C3329);
const unclickedColor = Color(0xFF196F3D);
Color probtn = Color(0xFF0C3329);
Color leadbtn = Color(0xFF196F3D);
Color gold = Color(0xFFD0B13E);
Color silver = Color(0xFFE7E7E7);
Color bronze = Color(0xFFA45735);

//Color list_item = Colors.grey[200];

class LeaderBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  List<String> names = [
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4",
    "user1",
    "user2",
    "user3",
    "user4"
  ];
  List<String> litems = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4"
  ];
  List<String> points = [
    "700",
    "600",
    "500",
    "400",
    "300",
    "200",
    "300",
    "400",
    "100",
    "200",
    "300",
    "400",
    "100",
    "200",
    "300",
    "400",
    "100",
    "200",
    "300",
    "400",
    "100",
    "200",
    "300",
    "400",
    "100",
    "200",
    "300",
    "400",
    "100",
    "200",
    "300",
    "400"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: cool,
          child: Card(
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            elevation: 0,
            color: Colors.red,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("4",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  CircleAvatar(
                    foregroundColor: Colors.green,
                    child: Icon(Icons.person),
                  ),
                  Text(
                    "Hilmi",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "300",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: probtn,
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: 200.0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(4.0),
              child: Container(
                color: avtar_backGround1,
                height: 50,
                child: Container(
                  child: Row(
                    children: [
                      SizedBox(width: 35),
                      Text("Postion",
                          style: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 52),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 60),
                      Text(
                        "Name",
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 60),
                      Text(
                        "Score",
                        style: TextStyle(
                            color: Colors.grey[200],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[leadbtn.withOpacity(0.5), cool])),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Text(
                        "LEADERBOARD",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey[200],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.emoji_events_rounded,
                      color: gold,
                      size: 70,
                    ),
                  ],
                ),
              ),
            ),
            elevation: 9.0,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) => buildList(context, index),
            childCount: litems.length,
          ))
        ],
      ),
    );
  }

  Widget buildList(BuildContext txt, int index) {
    int ind = index + 1;
    String point = points[index];
    final pos = litems[index];
    final name = names[index];

    Widget listItem;

    listItem = Card(
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      shadowColor: Colors.grey[200],
      color: gold,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(pos,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            CircleAvatar(
              foregroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            Text(
              name,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              point,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );

    return Stack(
      children: [
        Container(
          color: Colors.grey[200],
          child: listItem,
        ),
      ],
    );
  }
}
