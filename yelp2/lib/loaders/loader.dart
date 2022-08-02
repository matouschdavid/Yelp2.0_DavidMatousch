abstract class Loader<T> {
  Future<List<T>?> load();

  void save(List<T> data);
}
