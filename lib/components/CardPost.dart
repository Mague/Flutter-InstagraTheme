import 'package:flutter/material.dart';

class CardPost extends StatefulWidget {
  @override
  StoriesStatus createState() => new StoriesStatus();
}

class StoriesStatus extends State<CardPost> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 12.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    // alignment: Alignment.center,
                    //margin: EdgeInsets.only(right: 4.0, left: 15.0),
                    width: 45.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.atlantichousefm.com/assets/img/CATLEY_LAKEMAN-Tom.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      'Tua',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 1.5,
                              color: Color.fromARGB(125, 0, 0, 255),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              Container(
                //padding: EdgeInsets.only(left: 155.0),
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  tooltip: 'more:horiz',
                  onPressed: null,
                ),
              )
            ],
          ),
          Container(
            width: 450,
            height: 250,
            // alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://www.atlantichousefm.com/assets/img/CATLEY_LAKEMAN-Tom.jpg'),
              ),
            ),
          ),
          //actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    tooltip: 'like',
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_bubble_outline),
                    tooltip: 'like',
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    tooltip: 'like',
                    onPressed: null,
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.turned_in_not),
                tooltip: 'like',
                onPressed: null,
              ),
            ],
          ),
          //Like peoples
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2.0, right: 4.0, left: 15.0),
                width: 25.0,
                height: 25.0,
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.atlantichousefm.com/assets/img/CATLEY_LAKEMAN-Tom.jpg'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0),
                child: Row(
                  children: <Widget>[
                    Text('le gusta a '),
                    Text(
                      'user_name ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('y '),
                    Text(
                      '86 personas mas',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
