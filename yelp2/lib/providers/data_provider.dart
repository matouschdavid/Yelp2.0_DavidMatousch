import 'package:yelp2/loaders/loader.dart';

class DataProvider<T> {
  List<T> _data = [];
  final Loader<T> loader;

  DataProvider(this.loader);

  void add(T element) {
    _data.add(element);
    loader.save(_data);
  }

  List<T> get() {
    return _data;
  }

  Future<List<T>> load() async {
    _data = (await loader.load()) ?? [];
    return get();
  }
}
