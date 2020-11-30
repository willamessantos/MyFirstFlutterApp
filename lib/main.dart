import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(
    title: 'My First Flutter App',
  ));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int calc = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('My First Flutter App')),
      body: Center(
        child: Center(
          child: GestureDetector(
            child: Text('Calc: $calc', style: TextStyle(fontSize: 28),),
            onTap: () {
              setState(() {
                calc = calc * 2;
              });
            },
            onLongPress: () {
              setState(() {
                calc = 1;
              });
            }),
      ),
    ),
    );
  }
}
  

