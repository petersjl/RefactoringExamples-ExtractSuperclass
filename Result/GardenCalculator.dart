import 'Shapes.dart';

class GardenCalculator {
  List<Shape> _shapes;

  GardenCalculator() : _shapes = List.empty(growable: true);

  void addShape(Shape shape) => _shapes.add(shape);

  int calculateTotalPerimeter(){
    int perimeter = 0;

    for(var shape in _shapes){
      perimeter += shape.perimeter;
    }

    return perimeter;
  }

  double calculateTotalArea() {
    double area = 0;

    for(var shape in _shapes){
      area += shape.area;
    }

    return area;
  }
}