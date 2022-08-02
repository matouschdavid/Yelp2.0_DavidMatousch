import 'package:flutter/material.dart';
import 'package:yelp2/own_card.dart';
import 'package:yelp2/region_restaurants_screen.dart';

class RegionsCard extends OwnCard {
  final String region;
  RegionsCard(this.region, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OwnCard.simple(
      region,
      onTap: () => Navigator.pushNamed(context, '/region_restaurants',
          arguments: RegionRestaurantsScreenArgs(region: region)),
    );
  }
}
