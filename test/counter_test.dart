import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_repository_pattern/unit_testing/counter.dart';

void main() {
  test(
    'Testing the increment counter',
    () {
      // Arrange
      var counter = Counter(5);
      // Act
      counter.increment();
      // Assert
      expect(counter.value, 6);
    },
  );

  test(
    'Testing the decrement counter',
    () {
      // Arrange
      var counter = Counter(10);
      // Act
      counter.decrement();
      // Assert
      expect(counter.value, 9);
    },
  );
}
