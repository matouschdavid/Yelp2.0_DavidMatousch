import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/restaurant_loaders.dart';

class Restaurant {
  final String name;
  final double rating;

  const Restaurant(this.name, this.rating);
}

class RestaurantProvider extends DataProvider<Restaurant> {
  RestaurantProvider() : super(DummyRestaurantLoader());
}
