import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "share preferences ",
      initialRoute: "/",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  void setaval() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    share.setInt("hello", 100);
    share.setString("user_name", "mobin");
    share.setString("user_id", "2");
    share.setString("notification", "hello");
    print("value set in prefernece");
  }

  void getvalue() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    int id = share.getInt("hello");
    String user_name = share.getString('user_name');
    String user_id = share.getString('user_id');
    String user_noti = share.getString('notification');
    print("id of the use is =" +
        "${id}" +
        "\n" +
        "usename is=${user_name}" +
        "\n" +
        "user id is=${user_id}" +
        "\n");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("set value"),
              onPressed: () {
                setaval();
              },
            ),
            RaisedButton(
              child: Text("get value"),
              onPressed: () {
                getvalue();
              },
            ),
          ],
        ),
      ),
    );
  }
}
