import 'package:flutter/material.dart';
import 'package:yelp2/regions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // public MyApp(Key key){
  //   super(key);
  // }
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return new Car('red', new Engine(ps: 700, price: 800), new Wheels(price: 1000));
    // return new MaterialApp('Flutter Demo', new ThemeData(Colors.blue),
    //     new MyHomePage('Flutter Demo Home Page'));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const RegionsScreen(),
    );
  }
}
