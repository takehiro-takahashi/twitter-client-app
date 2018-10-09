import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ホーム'),
      ),
      body: new Center(
        child: Text('Hello World'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: _onTaped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home, color: Colors.blue,),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search, color: Colors.blue,),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.notifications, color: Colors.blue,),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.mail, color: Colors.blue,),
              title: new Text(''),
            ),
          ]
      ),
    );
  }

  _onTaped(int index) {
    print(index);
  }
}
