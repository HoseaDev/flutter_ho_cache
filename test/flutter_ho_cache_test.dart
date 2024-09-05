import 'package:flutter_ho_cache/HoCache.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ho_cache/flutter_ho_cache.dart';

void main() {
  // 确保在测试环境下初始化绑定
  TestWidgetsFlutterBinding.ensureInitialized();
  test('adds one to input values', () {
    final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    // Hocache.preInit();
    // Hocache.getInstance().setString("key", "1");
    Hocache.preInit().then((_) {
      // 确保初始化完成后再执行后续操作
      print("1");
      Hocache.getInstance().setString("key", "1");
      print("2");
    });
  });
}
