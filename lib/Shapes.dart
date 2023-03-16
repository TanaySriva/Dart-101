// creating a factory in two ways
import 'dart:math';

abstract class Shapes{//bastract classes can't be instantitated directly, should be used as subclass
  num get area;//num is a built-in abstract class represnting numric values.
}
//getter functions are a way to dervie a value and not store it, hence we use '=>' for them.
class Circle implements Shapes{
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shapes{
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main(){
  final circle = Circle(2);
  final square = Square(4);
  print(circle.area);
  print(square.area);
}