import 'package:shared_preferences/shared_preferences.dart';

class Hocache {
  SharedPreferences? prefs;
  static Hocache? _hocache;

  //把构造变成私有
  Hocache._() {
    _init();
  }

  static Future<dynamic> preInit() async {
    if (_hocache == null) {
      _hocache = Hocache._();
    }
    return _hocache;
  }

  static Hocache getInstance() {
    _hocache ??= Hocache._();
    return _hocache!;
  }

  _init() async {
    prefs ??= await SharedPreferences.getInstance();
  }

  setString(String key, String value) {
    prefs?.setString(key, value);
  }

  setDouble(String key, double value) {
    prefs?.setDouble(key, value);
  }

  setInt(String key, int value) {
    prefs?.setInt(key, value);
  }

  setBool(String key, bool value) {
    prefs?.setBool(key, value);
  }

  setStringList(String key, List<String> value) {
    prefs?.setStringList(key, value);
  }

  remove(String key) {
    prefs?.remove(key);
  }

  T? get<T>(String key) {
    var result = prefs?.get(key);
    if (result == null) {
      return null;
    } else {
      return result as T;
    }
  }
}
