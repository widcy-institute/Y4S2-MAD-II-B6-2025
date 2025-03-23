import 'package:flutter/material.dart';
import 'package:mad/screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _logo = Image.asset("assets/images/logo.png");

    final _getStart = Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        onPressed: () {
          final route = MaterialPageRoute(builder: (context) => MainScreen());
          //Navigator.push(context, route);
          Navigator.of(context).pushReplacement(route);
        },
        child: Text("ចាប់ផ្តើម", style: TextStyle(color: Colors.white)),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
        ),
      ),
    );

    final _body = Center(
      child: Column(children: [Expanded(child: _logo), _getStart]),
    );

    final screen = Scaffold(body: _body);

    return screen;
  }
}
