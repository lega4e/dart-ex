/* BEGIN */
import 'dart:math' as math;



// classes
abstract class AreaInterface
{
	double calculateArea();
}

class Rectangle implements AreaInterface
{
	double width;
	double height;

	Rectangle(this.width, this.height);

	@override
	double calculateArea()
	{
		return width * height;
	}
}

class Circle implements AreaInterface
{
	double radius;

	Circle(this.radius);

	@override
	double calculateArea()
	{
		return radius * radius * math.pi;
	}
}

class AreaCalculator
{
	/*
	 * Отлично! — какой бы новый класс фигуры мы не написалы бы, AreaCalculator
	 * сможет с ним работать, если он реализцет интерфейс AreaInterface.
	 * Поэтому, с добавлением нового класса, AreaCalculator никак менять не
	 * придётся. Таким образом, принцип отрыкости-закрытости SOLID соблюдается.
	 */
	double calculate(AreaInterface shape)
	{
		return shape.calculateArea();
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
