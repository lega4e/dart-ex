/* BEGIN */



void print_sign(int val)
{
	if (val < 0)
		print("$val — Отрицательное");
	else if (val > 0)
		print("$val — Положительное");
	else
		print("$val — Ноль");
}

void print_digit(int d)
{
	switch (d)
	{
	N0: case 0:
		print("Ноль");
		break; // необходим, без него будет ошибка
	case 1:
		print("Один");
		break;
	case 2:
		print("Два");
		break;
	case 10:
		print("Один");
		continue N0; // Можно вызвать переход на другую метку явно
	default:
		print("Не знаю, что за цифра такая странная...");
		break;
	}
}


void main()
{
	int v = 32;

	var a = int.parse("32");
	double d = double.parse("3.4");
	print("$d");
	print("$a, ${a + 4}");
	if (v > 40)
		print("v > 40");
	else
		print("v <= 40");


	print_sign(v);
	print_sign(0);
	print_sign(-v);

	print("\ndigits:");
	print_digit(0);
	print_digit(2);
	print_digit(4);
	print_digit(10);

	// Тернарная операция
	print("value = " + (4 > 5 ? 4 : 5).toString());
}



/* END */
