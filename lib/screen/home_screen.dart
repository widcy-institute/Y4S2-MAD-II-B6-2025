import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _appBar = AppBar(
      title: Text("Hi, Guest"),
      centerTitle: false,
      elevation: 5,
      backgroundColor: Colors.white,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: Icon(Icons.notifications),
        ),
      ],
    );

    final _slide = Image.asset("assets/images/slide1.png", fit: BoxFit.cover);

    final _firstRow = Padding(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("មហាវិទ្យាល័យ"),
          Row(children: [Text("ច្រើនទៀត"), Icon(Icons.navigate_next)]),
        ],
      ),
    );

    final _facultyImages = Card(
      elevation: 5,
      child: Image.asset("assets/images/image2.png"),
    );

    final _facultyItemsRow = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [_facultyImages, _facultyImages, _facultyImages]),
    );

    final _body = ListView(children: [_slide, _firstRow, _facultyItemsRow]);

    final _screen = Scaffold(appBar: _appBar, body: _body);

    return _screen;
  }
}
