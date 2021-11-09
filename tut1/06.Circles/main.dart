/* BEGIN */

import 'dart:io';

final write = stdout.write;



void main()
{
	hello();

	// Поля могут пропускаться точно так же, как в Си
	for (int i = 0; i < 5; ++i)
		write("$i ");
	write("\n");

	int j = 7;
	do
		write("$j ");
	while (--j != 0);
	write("\n");

	j = 7;
	while (--j != 0)
		write("$j ");
	write("\n");

	outloop: for (int i = 0; i < 5; ++i) // можно ставить метки
	{
		write("\n");
		for (int j = 0; j < 10; ++j)
		{
			write("\$ ");
			if (i == 2 && j == 4)
				continue outloop;
			if (i == 3 && j == 3)
				break outloop;
		}
	}
}

void hello()
{
	print("Hello!");
}



/* END */
