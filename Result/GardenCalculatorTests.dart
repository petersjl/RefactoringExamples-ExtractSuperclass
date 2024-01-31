import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'GardenCalculator.dart';
import 'Shapes.dart';

void main(){
  late GardenCalculator calculator;
  setUp(() => calculator = GardenCalculator());

  group("Test perimeter calculation", () {
    test("for a triangle 1", () {
      calculator.addShape(Triangle(3));
      expect(calculator.calculateTotalPerimeter(), 9);
    });
    test("for a triangle 2", () {
      calculator.addShape(Triangle(5));
      expect(calculator.calculateTotalPerimeter(), 15);
    });
    test("for a square 1", () {
      calculator.addShape(Square(3));
      expect(calculator.calculateTotalPerimeter(), 12);
    });
    test("for a square 2", () {
      calculator.addShape(Square(5));
      expect(calculator.calculateTotalPerimeter(), 20);
    });
    test("for a hexagon 1", () {
      calculator.addShape(Hexagon(3));
      expect(calculator.calculateTotalPerimeter(), 18);
    });
    test("for a hexagon 2", () {
      calculator.addShape(Hexagon(5));
      expect(calculator.calculateTotalPerimeter(), 30);
    });
    test("for a triangle and square", () {
      calculator.addShape(Triangle(3));
      calculator.addShape(Square(5));
      expect(calculator.calculateTotalPerimeter(), 29);
    });
    test("for a multiple shapes", () {
      calculator.addShape(Triangle(3));
      calculator.addShape(Square(5));
      calculator.addShape(Hexagon(3));
      expect(calculator.calculateTotalPerimeter(), 47);
    });
  });

  group("Test area calculation", () {
    test("for a triangle 1", () {
      calculator.addShape(Triangle(3));
      expect(calculator.calculateTotalArea(), closeTo(3.89711, 0.00001));
    });
    test("for a triangle 2", () {
      calculator.addShape(Triangle(5));
      expect(calculator.calculateTotalArea(), closeTo(10.82532, 0.00001));
    });
    test("for a square 1", () {
      calculator.addShape(Square(3));
      expect(calculator.calculateTotalArea(), 9);
    });
    test("for a square 2", () {
      calculator.addShape(Square(5));
      expect(calculator.calculateTotalArea(), 25);
    });
    test("for a hexagon 1", () {
      calculator.addShape(Hexagon(3));
      expect(calculator.calculateTotalArea(), closeTo(23.38269, 0.00001));
    });
    test("for a hexagon 2", () {
      calculator.addShape(Hexagon(5));
      expect(calculator.calculateTotalArea(), closeTo(64.95191, 0.00001));
    });
    test("for a triangle and square", () {
      calculator.addShape(Triangle(3));
      calculator.addShape(Square(5));
      expect(calculator.calculateTotalArea(), closeTo(28.89711, 0.00001));
    });
    test("for a multiple shapes", () {
      calculator.addShape(Triangle(3));
      calculator.addShape(Square(5));
      calculator.addShape(Hexagon(3));
      expect(calculator.calculateTotalArea(), closeTo(52.2798, 0.00001));
    });
  });
}