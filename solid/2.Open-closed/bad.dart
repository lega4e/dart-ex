/* BEGIN */
import 'dart:math' as math;



// classes
class Rectangle
{
	double width;
	double height;

	Rectangle(this.width, this.height);
}

class Circle
{
	double radius;

	Circle(this.radius);
}

class AreaCalculator
{
	/*
	 * Проблема: если появится новый класс, для которого мы хотим считать
	 * площадь, придётся модифицировать содержимое AreaCalculator, добавляя
	 * в метод calculate новое условие. Таким образом нарушается принцип
	 * открытости-закрытости в SOLID.
	 */
	double calculate(dynamic shape)
	{
		if (shape is Rectangle)
			return shape.width * shape.height;
		else if (shape is Circle)
			return shape.radius * shape.radius  * math.pi;
		else
			throw "AreaCalculator::calculate: Unknown shape";
	}
}



void main()
{
	var rect = Rectangle(9.0, 3.5);
	var circ = Circle(4.5);
	var area = AreaCalculator();

	print("Area of Rect:   ${area.calculate(rect)}");
	print("Area of Circle: ${area.calculate(circ)}");
}



/* END */
