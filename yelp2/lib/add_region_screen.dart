import 'package:flutter/material.dart';
import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/providers/region_provider.dart';
import 'package:yelp2/region_loaders.dart';

class AddRegionScreen extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();
  AddRegionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: cityController,
          maxLines: 1,
          decoration: const InputDecoration(hintText: 'Cityname'),
        ),
        InkWell(
          onTap: () {
            final input = cityController.value.text;
            ProviderFactory.get(() => RegionProvider()).add(input);
            Navigator.pop(context);
          },
          child: Container(
            color: Colors.green,
            child: const Text('Add Region'),
          ),
        )
      ]),
    );
  }
}
