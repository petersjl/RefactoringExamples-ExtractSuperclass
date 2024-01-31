import 'dart:math';

abstract class Shape {
  int _sideLength;

  int get sideLength => _sideLength;

  Shape(this._sideLength);
}

class Triangle extends Shape {
  int get sideCount => 3;

  Triangle(super._sideLength);

  int get perimeter => 
    sideCount * sideLength;

  num get area {
    return sqrt(3)/4 * pow(sideLength, 2);
  }
}

class Square extends Shape {
  int get sideCount => 4;

  Square(super._sideLength);

  int get perimeter => 
    sideCount * sideLength;

  num get area {
    return pow(sideLength, 2);
  }
}

class Hexagon extends Shape {
  int get sideCount => 6;

  Hexagon(super._sideLength);

  int get perimeter => 
    sideCount * sideLength;

  num get area {
    return 6 * sqrt(3)/4 * pow(sideLength, 2);
  }
}