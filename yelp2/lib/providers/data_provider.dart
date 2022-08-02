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

abstract class Loader<T> {
  Future<List<T>?> load();

  void save(List<T> data);
}

class ProviderFactory {
  static Map<Type, DataProvider> providers = {};

  static DataProvider get<T>(DataProvider<T> Function() createNew) {
    return providers.putIfAbsent(T.runtimeType, createNew);
  }
}
