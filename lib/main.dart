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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ホーム'),
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
