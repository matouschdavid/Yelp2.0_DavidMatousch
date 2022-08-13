import 'package:flutter/material.dart';
import 'package:yelp2/providers/region_provider.dart';
import 'package:yelp2/regions_card.dart';
import 'package:yelp2/screen.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({Key? key}) : super(key: key);

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {
  List<Region> regions = [];

  @override
  void initState() {
    super.initState();
    RegionProvider().load().then((value) => setState(() => regions = value));
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      onFabPressed: _addRegion,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: regions.map((Region r) => RegionsCard(r)).toList(),
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
