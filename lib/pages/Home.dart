import 'package:flutter/material.dart';
import 'package:instagram/components/CardPost.dart';
import 'package:instagram/components/Stories.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageStatus createState() => new HomePageStatus();
}

class HomePageStatus extends State<HomePage>{

  //var textList = ;
  List<Widget> lol = <Widget>[ Stories(),Divider(color: Colors.grey,),
  CardPost(),
  ] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: ListView(
          shrinkWrap: true,
          children: lol,
        ),
      ),
    );
  }

  void _getPosts() async {
    lol.add(Text(''));
  }
}