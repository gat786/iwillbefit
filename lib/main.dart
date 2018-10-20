import 'package:flutter/material.dart';
import 'package:iwillbefit/layouts/startpage.dart';
import 'package:iwillbefit/uicomponents/carousel.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'I Will Be Fit'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
          return new Scaffold(
      body: Carousel()
    );
  }
}
