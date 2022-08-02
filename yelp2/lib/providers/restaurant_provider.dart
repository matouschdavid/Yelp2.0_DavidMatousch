import 'package:yelp2/loaders/loader.dart';
import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/loaders/restaurant_loaders.dart';

class Restaurant {
  final String name;
  final double rating;

  const Restaurant(this.name, this.rating);
}

class RestaurantProvider extends DataProvider<Restaurant> {
  static final RestaurantProvider _instance =
      RestaurantProvider._internal(DummyRestaurantLoader());

  RestaurantProvider._internal(Loader<Restaurant> loader) : super(loader);

  factory RestaurantProvider() {
    return _instance;
  }
}
