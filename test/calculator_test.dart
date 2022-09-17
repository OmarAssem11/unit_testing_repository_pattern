import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_repository_pattern/unit_testing/calculator.dart';

void main() {
  test(
    'Testing calculator divide',
    () {
      // Arrange
      var calculator = Calculator();
      // Act
      double result = calculator.divide(10, 0);
      // Assert
      expect(result, 0);
    },
  );
}
