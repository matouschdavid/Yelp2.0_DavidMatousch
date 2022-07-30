import 'package:flutter/material.dart';
import 'package:yelp2/region_restaurants_screen.dart';

class RegionsCard extends StatelessWidget {
  final String region;
  // RegionsCard(String city) {
  //   this.city = city;
  // }
  const RegionsCard(this.region, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/region_restaurants',
            arguments: RegionRestaurantsScreenArgs(region: region)),
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
          child: Center(child: Text(region)),
        ),
      ),
    );
  }
}
