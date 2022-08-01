import 'package:flutter/material.dart';
import 'package:yelp2/providers/restaurant_provider.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCard(this.restaurant, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
      ),
    );
  }
}
