import 'package:flutter/material.dart';

class StoriesUser extends StatefulWidget {
  @override
  StoriesUserState createState() => new StoriesUserState();
}

class StoriesUserState extends State<StoriesUser>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          // alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15.0, right: 4.0, left: 15.0),
          width: 65.0,
          height: 65.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://www.atlantichousefm.com/assets/img/CATLEY_LAKEMAN-Tom.jpg'),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top:5.0,left: 10.0),
          child: Text('username',
            style:TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }

}