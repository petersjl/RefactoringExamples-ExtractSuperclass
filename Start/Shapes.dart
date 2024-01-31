import 'dart:math';

class Triangle {
  int _sideLength;

  int get sideCount => 3;
  int get sideLength => _sideLength;

  Triangle(this._sideLength);

  int get perimeter => 
    sideCount * sideLength;

  num get area {
    return sqrt(3)/4 * pow(sideLength, 2);
  }
}

class Square {
  int _sideLength;

  int get sideCount => 4;
  int get sideLength => _sideLength;

  Square(this._sideLength);

  int get perimeter => 
    sideCount * sideLength;

  num get area {
    return pow(sideLength, 2);
  }
}

class Hexagon {
  int _sideLength;

  int get sideCount => 6;
  int get sideLength => _sideLength;

  Hexagon(this._sideLength);

  int get perimeter => 
    sideCount * sideLength;

  num get area {
    return 6 * sqrt(3)/4 * pow(sideLength, 2);
  }
}