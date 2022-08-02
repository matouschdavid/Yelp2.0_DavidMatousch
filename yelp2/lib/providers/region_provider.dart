import 'package:yelp2/loaders/loader.dart';
import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/loaders/region_loaders.dart';

class RegionProvider extends DataProvider<String> {
  static final RegionProvider _instance =
      RegionProvider._internal(StorageRegionLoader());

  RegionProvider._internal(Loader<String> loader) : super(loader);

  factory RegionProvider() {
    return _instance;
  }
}
