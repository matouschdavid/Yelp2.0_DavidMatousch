import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/providers/restaurant_provider.dart';

class DummyRestaurantLoader implements Loader<Restaurant> {
  @override
  Future<List<Restaurant>?> load() {
    return Future.value(const [
      Restaurant('muto Restaurant', 3.5),
      Restaurant('Gelbes Krokodil', 2.1)
    ]);
  }

  @override
  void save(List<Restaurant> data) {}
}

// class StorageRestaurantLoader implements RestaurantLoader {
//   // ignore: constant_identifier_names
//   static const RESTAURANTS_KEY = 'RESTAURANTS';
//   @override
//   Future<List<Restaurant>?> load() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getStringList(RESTAURANTS_KEY);
//   }

//   @override
//   Future<void> save(List<String> data) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setStringList(RESTAURANTS_KEY, data);
//   }
// }
