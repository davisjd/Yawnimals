import 'globals.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YAWNIMALS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'YAWNIMALS'),
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
  // _launchURL() async {
  //   var url =
  //       'https://pixabay.com/api/?key=11996504-c9b10a3478c38892fbcdeb5eb&q=$element';
  //   if (await canLaunch(url)) {
  //     await launch(url, forceWebView: true);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var url =
        "https://pixabay.com/api/?key=11996504-c9b10a3478c38892fbcdeb5eb&q=$element";
    var response = http.get(url);
    print(response);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              element,
              style: new TextStyle(color: Colors.black, fontSize: 36),
            ),
            Text(
              'Number of Yawns: $yawns',
              style: new TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState();
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AnimalsWebPage(),
              ));
        },
        child: new Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class AnimalsWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(element),
      ),
      body: WebView(
        initialUrl:
            'https://pixabay.com/api/?key=11996504-c9b10a3478c38892fbcdeb5eb&q=$element',
      ),
    );
  }
}
