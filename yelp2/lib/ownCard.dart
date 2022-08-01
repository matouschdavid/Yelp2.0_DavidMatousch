import 'package:flutter/material.dart';

class OwnCard extends StatelessWidget {
  final void Function()? onTap;
  late final Widget? child;
  // ignore: prefer_const_constructors_in_immutables
  OwnCard({Key? key, this.onTap, this.child}) : super(key: key);

  OwnCard.simple(String text, {Key? key, this.onTap}) : super(key: key) {
    child = Text(text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
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
          child: Center(child: child),
        ),
      ),
    );
  }
}
