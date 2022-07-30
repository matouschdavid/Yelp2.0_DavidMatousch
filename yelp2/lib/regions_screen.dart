import 'package:flutter/material.dart';
import 'package:yelp2/providers/region_provider.dart';
import 'package:yelp2/regions_card.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({Key? key}) : super(key: key);

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {
  List<String> regions = [];

  @override
  void initState() {
    super.initState();
    RegionProvider().load().then((value) => setState(() => regions = value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yelp 2.0'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: IconButton(
        icon: const Icon(Icons.add_outlined),
        onPressed: _addRegion,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: regions.map((String c) => RegionsCard(c)).toList(),
        ),
      ),
    );
  }

  void _addRegion() async {
    await Navigator.pushNamed(context, '/add_region');
    setState(() {
      regions = RegionProvider().get();
    });
  }
}
