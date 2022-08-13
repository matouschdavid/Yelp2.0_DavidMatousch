import 'package:yelp2/restaurant_loaders.dart';

class RestaurantProvider {
  final RestaurantLoader loader = DatabaseRestaurantLoader();
  List<Restaurant> _restaurants = [];

  static final RestaurantProvider _instance = RestaurantProvider._internal();
  factory RestaurantProvider() {
    return _instance;
  }
  RestaurantProvider._internal();

  void add(Restaurant restaurant) {
    _restaurants.add(restaurant);
    loader.save(_restaurants);
  }

  List<Restaurant> get() {
    return _restaurants;
  }

  Future<List<Restaurant>> load(String regionId) async {
    _restaurants = (await loader.load(regionId)) ?? [];
    return get();
  }
}

class Restaurant {
  final String name;
  final double rating;

  const Restaurant(this.name, this.rating);

  Restaurant.fromJson(Map<String, dynamic> data)
      : name = data['name'] as String,
        rating = data['rating'] as double;
}
