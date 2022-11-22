import 'package:flutter_test/flutter_test.dart';

import 'package:dart_published/dart_published.dart';

void main() {
  test('test', () {
    List<int> eventValueList = [];
    int eventCount = 0;

    Publisher<int> a = Publisher<int>(1);

    a.sink((newValue) {
      expect(newValue, a.value);
      eventValueList.add(newValue);
      eventCount++;
    });

    a.value = 2;

    expect(a.value, 2);
    expect(eventValueList, [2]);
    expect(eventCount, 1);

    a.value = 3;

    expect(a.value, 3);
    expect(eventValueList, [2, 3]);
    expect(eventCount, 2);
  });
}
