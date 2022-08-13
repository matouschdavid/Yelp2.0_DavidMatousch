import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelp2/providers/restaurant_provider.dart';

abstract class RestaurantLoader {
  Future<List<Restaurant>?> load(String regionId);

  void save(List<Restaurant> data);
}

class DummyRestaurantLoader implements RestaurantLoader {
  @override
  Future<List<Restaurant>?> load(String regionId) {
    return Future.value(const [
      Restaurant('muto Restaurant', 3.5),
      Restaurant('Gelbes Krokodil', 2.1)
    ]);
  }

  @override
  void save(List<Restaurant> data) {}
}

class DatabaseRestaurantLoader implements RestaurantLoader {
  @override
  Future<List<Restaurant>?> load(String regionId) async {
    final db = FirebaseFirestore.instance;
    final snapshot = await db.collection("regions/$regionId/restaurants").get();
    return snapshot.docs.map((doc) => Restaurant.fromJson(doc.data())).toList();
  }

  @override
  void save(List<Restaurant> data) {}
}
