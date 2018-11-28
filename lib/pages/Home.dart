import 'package:flutter/material.dart';
import 'package:instagram/components/Stories.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageStatus createState() => new HomePageStatus();
}

class HomePageStatus extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stories();
  }
}