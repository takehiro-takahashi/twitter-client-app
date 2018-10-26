import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter_pp/pages/Home.dart';
import 'package:twitter_pp/pages/KeyWord.dart';
import 'package:twitter_pp/pages/Notifications.dart';
import 'package:twitter_pp/pages/Message.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      // portrait only setting
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.blue
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

  List tabItemWidget = [
    Home(),
    KeyWord(),
    Notifications(),
    Message(),
  ];

  List icons = [
    Icons.add,
    Icons.person_add,
    Icons.settings,
    Icons.mail
  ];

  List titles = [
    "ホーム",
    "キーワード",
    "通知",
    "メッセージ"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: currentIndex != 1
        ? new AppBar(
        title: new Text(titles[currentIndex]),
        actions: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(icons[currentIndex], color: Colors.blue,),
          )
        ],
        leading: Container(
          margin: EdgeInsets.all(10.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: new NetworkImage("http://d2dcan0armyq93.cloudfront.net/photo/odai/600/915409eb62fa0ac15f11fa450e085a6e_600.jpg"),
              fit: BoxFit.cover
            )
          )
        )
      )
      : AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            labelText: 'キーワード検索',
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          new Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Icon(
              icons[currentIndex],
              color: Colors.blue,
            ),
          )
        ],
        leading: Container(
          margin: EdgeInsets.all(10.0),
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: new NetworkImage("http://d2dcan0armyq93.cloudfront.net/photo/odai/600/915409eb62fa0ac15f11fa450e085a6e_600.jpg"),
              fit: BoxFit.cover
            )
          )
        )
      ),
      body: new Center(
        child: tabItemWidget[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: _onTaped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.blue,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.blue,),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail, color: Colors.blue,),
              title: Text(''),
            ),
          ]
      ),
    );
  }

  _onTaped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
