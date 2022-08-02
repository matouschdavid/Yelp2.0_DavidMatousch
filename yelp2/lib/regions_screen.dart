import 'package:flutter/material.dart';
import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/providers/region_provider.dart';
import 'package:yelp2/regions_card.dart';
import 'package:yelp2/screen.dart';

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
    ProviderFactory.get(
      () => RegionProvider(),
    ).load().then((value) => setState(() => regions = value as List<String>));
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      onFabTab: _addRegion,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: regions.map((String c) => RegionsCard(c)).toList(),
      ),
    );
  }

  void _addRegion() async {
    await Navigator.pushNamed(context, '/add_region');
    setState(() {
      regions = ProviderFactory.get(
        () => RegionProvider(),
      ).get() as List<String>;
    });
  }
}
