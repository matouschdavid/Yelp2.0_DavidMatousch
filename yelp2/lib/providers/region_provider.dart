import 'package:yelp2/providers/data_provider.dart';
import 'package:yelp2/region_loaders.dart';

class RegionProvider extends DataProvider<String> {
  RegionProvider() : super(StorageRegionLoader());
}
