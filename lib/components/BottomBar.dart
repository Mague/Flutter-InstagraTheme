import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  BottomBarStatus createState() => new BottomBarStatus();
}

class BottomBarStatus extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabBar(
      tabs: [
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.search),
        ),
        Tab(
          icon: Icon(Icons.add_box),
        ),
        Tab(
          icon: Icon(Icons.add_box),
        ),
        Tab(
          icon: Icon(Icons.people),
        )
      ],
      labelColor: Colors.black54,
      unselectedLabelColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.transparent,
    );
  }
}
