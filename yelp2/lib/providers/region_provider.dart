import 'package:yelp2/region_loaders.dart';

class RegionProvider {
  final RegionLoader loader = DatabaseRegionLoader();
  List<Region> _regions = [];

  // private static CityProvider instance;
  static final RegionProvider _instance = RegionProvider._internal();

  // public static CityProvider getInstance(){
  //  if(instance == null){
  //   instance = new CityProvider();
  //  }
  //  return instance;
  // }
  factory RegionProvider() {
    return _instance;
  }

  //private CityProvider(){}
  RegionProvider._internal();

  void add(Region region) {
    _regions.add(region);
    loader.save(_regions);
  }

  List<Region> get() {
    return _regions;
  }

  Future<List<Region>> load() async {
    _regions = (await loader.load()) ?? [];
    return get();
  }
}

class Region {
  final String id;
  final String name;

  const Region(this.id, this.name);

  Region.fromJson(this.id, Map<String, dynamic> data) : name = data['name'];
}
