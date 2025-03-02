import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:marti_case/core/cache/i_cache_manager.dart';


abstract class HiveCacheManager<T> extends ICacheManager<T> {
  String get boxName;
  Box<T>? _box;

  @override
  Future<void> initialize() async {
    registerAdapters();
    if (_box?.isOpen != true) {
      _box = Hive.box(name: boxName);
    }
  }

  void registerAdapters();

  @override
  T? get(String key) {
    final value = _box?.get(key);
    return value;
  }

  @override
  List<T?>? getAll(Iterable<String> keys) {
    return _box?.getAll(keys).toList();
  }

  @override
  void add(T item) {
    _box?.add(item);
  }

  @override
  void addList(List<T> items) {
    _box?.addAll(items);
  }

  @override
  bool? delete(String key) {
    return _box?.delete(key);
  }

  @override
  Future<void> put(String key, T item) async {
    log(item.toString());
    _box?.put(key, item);
  }

  @override
  Future<void> putAll(Map<String, T> mapObject) async {
    _box?.putAll(mapObject);
  }

  @override
  Future<void> deleteAll(Iterable<String> keys) async {
    _box?.deleteAll(keys);
  }
}
