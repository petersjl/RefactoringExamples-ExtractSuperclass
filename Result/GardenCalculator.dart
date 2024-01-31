import 'Shapes.dart';

class GardenCalculator {
  List<Shape> _shapes;

  GardenCalculator() : _shapes = List.empty(growable: true);

  void addShape(Shape shape) => _shapes.add(shape);

  int calculateTotalPerimeter(){
    int perimeter = 0;

    for(var shape in _shapes){
      switch(shape.runtimeType){
        case Triangle: perimeter += (shape as Triangle).perimeter;
        case Square: perimeter += (shape as Square).perimeter;
        case Hexagon: perimeter += (shape as Hexagon).perimeter;
      }
    }

    return perimeter;
  }

  double calculateTotalArea() {
    double area = 0;

    for(var shape in _shapes){
      switch(shape.runtimeType){
        case Triangle: area += (shape as Triangle).area;
        case Square: area += (shape as Square).area;
        case Hexagon: area += (shape as Hexagon).area;
      }
    }

    return area;
  }
}