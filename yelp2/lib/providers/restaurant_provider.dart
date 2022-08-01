import 'package:yelp2/restaurant_loaders.dart';

class RestaurantProvider {
  final RestaurantLoader loader = DummyRestaurantLoader();
  List<Restaurant> _restaurants = [];

  // private static CityProvider instance;
  static final RestaurantProvider _instance = RestaurantProvider._internal();

  // public static CityProvider getInstance(){
  //  if(instance == null){
  //   instance = new CityProvider();
  //  }
  //  return instance;
  // }
  factory RestaurantProvider() {
    return _instance;
  }

  //private CityProvider(){}
  RestaurantProvider._internal();

  void add(Restaurant restaurant) {
    _restaurants.add(restaurant);
    loader.save(_restaurants);
  }

  List<Restaurant> get() {
    return _restaurants;
  }

  Future<List<Restaurant>> load() async {
    _restaurants = (await loader.load()) ?? [];
    return get();
  }
}

class Restaurant {
  final String name;
  final double rating;

  const Restaurant(this.name, this.rating);
}
