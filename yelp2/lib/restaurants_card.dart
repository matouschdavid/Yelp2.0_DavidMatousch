import 'package:flutter/material.dart';
import 'package:yelp2/own_card.dart';
import 'package:yelp2/providers/restaurant_provider.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCard(this.restaurant, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OwnCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(restaurant.name),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(restaurant.rating.toString()),
              const Icon(Icons.star_border)
            ],
          )
        ],
      ),
    );
  }
}
