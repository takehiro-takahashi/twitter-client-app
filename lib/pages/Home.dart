import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: List.generate(11, (index){
            return InkWell(
              onTap: (){},
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Index ユーザー $index"),
                    leading: Image.asset(
                      "assets/icon$index.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                    subtitle: Text("こんにちはTwitterへ！！\nこちらはTwitterのクローンを作成しています"),
                  ),
                  SizedBox(height: 20.0,),
                  Divider(height: 5.0,),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}