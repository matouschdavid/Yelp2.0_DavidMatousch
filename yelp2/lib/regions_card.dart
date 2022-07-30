import 'package:flutter/material.dart';

class RegionsCard extends StatelessWidget {
  final String city;
  // RegionsCard(String city) {
  //   this.city = city;
  // }
  const RegionsCard(this.city, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Color.fromARGB(25, 0, 0, 0),
              offset: Offset(0, 4),
            )
          ]),
      child: Text(city),
    );
  }
}
