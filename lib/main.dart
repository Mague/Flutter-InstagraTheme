import 'package:flutter/material.dart';
import 'package:instagram/components/BottomBar.dart';
import 'package:instagram/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Theme',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/800px-Instagram_logo.svg.png',
              height: 35.0,
              
              color: Colors.black,
            ),
            leading: Container(
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.camera_alt),
                    tooltip: 'camara',
                    onPressed: null,
                  )
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Container(
                  padding: EdgeInsets.all(2.0),
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/0/0f/IGTV_logo.png'),
                    ],
                  ),
                ),
                tooltip: 'camara',
                onPressed: null,
                alignment: Alignment.centerLeft,
              ),
              IconButton(
                icon: const Icon(Icons.send),
              ),
            ],
            backgroundColor: Colors.white,
          ),
          body: TabBarView(
            children: [
              HomePage(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.home),
              Icon(Icons.add_box),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
