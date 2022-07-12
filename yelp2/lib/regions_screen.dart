import 'package:flutter/material.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({Key? key}) : super(key: key);

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Yelp 2.0'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: IconButton(
          icon: const Icon(Icons.add_outlined),
          onPressed: _addRegion,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
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
                child: const Text('Linz'),
              ),
              Text('Wien'),
              Text('Riga')
            ],
          ),
        ));
  }

  void _addRegion() {}
}
