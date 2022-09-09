import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_repository_pattern/counter.dart';

void main() {
  test(
    'Testing the increment counter',
    () {
      //Arrange
      final counter = Counter(5);
      //Act
      counter.increment();
      //Assert
      expect(counter.value, 6);
    },
  );
}
