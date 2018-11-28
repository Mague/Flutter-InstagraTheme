import 'package:flutter/material.dart';
import 'package:instagram/components/StoriesUser.dart';

class Stories extends StatefulWidget {
  @override
  StoriesStatus createState() => new StoriesStatus();
}

class StoriesStatus extends State<Stories>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      height: 100.0,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
                <Widget>[
                  StoriesUser(),
                  StoriesUser(),
                  StoriesUser(),
                  StoriesUser(),
                  StoriesUser(),
                  StoriesUser(),
                  StoriesUser(),
                ]
            ),
          )
        ],
      ),
    );
  }

}
